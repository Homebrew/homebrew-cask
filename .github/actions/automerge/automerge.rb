require "json"

Homebrew.install_gem! "git_diff"
require "git_diff"
require_relative "git_diff_extensions"
using GitDiffExtension

require "utils/github"

ENV["GITHUB_ACTION"]     = ENV.delete("HOMEBREW_GITHUB_ACTION")
ENV["GITHUB_ACTOR"]      = ENV.delete("HOMEBREW_GITHUB_ACTOR")
ENV["GITHUB_EVENT_NAME"] = ENV.delete("HOMEBREW_GITHUB_EVENT_NAME")
ENV["GITHUB_EVENT_PATH"] = ENV.delete("HOMEBREW_GITHUB_EVENT_PATH")
ENV["GITHUB_REPOSITORY"] = ENV.delete("HOMEBREW_GITHUB_REPOSITORY")
ENV["GITHUB_SHA"]        = ENV.delete("HOMEBREW_GITHUB_SHA")
ENV["GITHUB_WORKFLOW"]   = ENV.delete("HOMEBREW_GITHUB_WORKFLOW")
ENV["GITHUB_WORKSPACE"]  = ENV.delete("HOMEBREW_GITHUB_WORKSPACE")

class Skip < StandardError; end

def skip(message)
  raise Skip, message
end

event = JSON.parse(File.read(ENV.fetch("GITHUB_EVENT_PATH")))

puts "ENV:"
puts ENV.to_h.sort_by { |k, | k }.select { |k,| k.start_with?("GITHUB_") }.map { |k, v| "#{k}=#{v}" }
puts

puts "EVENT:"
puts JSON.pretty_generate(event)
puts

def find_pull_request_for_status(event)
  repo = event.fetch("repository").fetch("full_name")

  branch = event.fetch("branches").find { |branch| branch.fetch("commit").fetch("sha") == event.fetch("commit").fetch("sha") }

  /https:\/\/api.github.com\/repos\/(?<pr_author>[^\/]+)\// =~ branch.fetch("commit").fetch("url")

  GitHub.pull_requests(
    repo,
    base: "#{event.fetch("repository").fetch("default_branch")}",
    head: "#{pr_author}:#{branch.fetch("name")}",
    state: "open",
    sort: "updated",
    direction: "desc",
  ).find { |pr| pr.fetch("head").fetch("sha") == event.fetch("commit").fetch("sha") }
end

def diff_for_pull_request(pr)
  diff_url = pr.fetch("diff_url")

  output, _, status = curl_output("--location", diff_url)

  GitDiff.from_string(output) if status.success?
end

def merge_pull_request(pr, statuses = GitHub.open_api(pr.fetch("statuses_url")))
  skip "CI status is not successful." unless passed_ci?(statuses)

  diff = diff_for_pull_request(pr)
  skip "Not a “simple” version bump pull request." unless diff.simple?

  puts "Merging pull request #{pr.fetch("number")}…"

  repo   = pr.fetch("base").fetch("repo").fetch("full_name")
  number = pr.fetch("number")
  sha    = pr.fetch("head").fetch("sha")

  begin
    tries ||= 0

    GitHub.merge_pull_request(
      repo,
      number: number, sha: sha,
      merge_method: :squash,
    )
    puts "Pull request #{pr.fetch("number")} merged successfully."
  rescue => e
    $stderr.puts "Failed to merge pull request #{pr.fetch("number")}."
    $stderr.puts e
    raise if (tries += 1) > 3
    sleep 5
    retry
  end
end

def passed_ci?(statuses = [])
  statuses = Hash[
    statuses.group_by { |status| status.fetch("context") }
            .map { |(k, v)| [k, v.max_by { |status| Time.parse(status.fetch("updated_at")) }] }
  ]

  statuses.dig("continuous-integration/travis-ci/pr", "state") == "success"
end

begin
  case ENV["GITHUB_EVENT_NAME"]
  when "status"
    status = event

    pr = find_pull_request_for_status(status)
    merge_pull_request(pr, [status])
  when "pull_request", "pull_request_review", "pull_request_review_comment"
    pr = event.fetch("pull_request")
    merge_pull_request(pr)
  when "issue_comment"
    issue = event.fetch("issue")

    skip "Not a pull request." unless pr_url = issue.dig("pull_request", "url")

    pr = GitHub.open_api(pr_url)
    merge_pull_request(pr)
  when "push"
    prs = GitHub.pull_requests(ENV["GITHUB_REPOSITORY"], state: :open, base: "master")

    merged_prs = prs.select do |pr|
      begin
        merge_pull_request(pr)
        true
      rescue
        false
      end
    end

    skip "No “simple” version bump pull requests found." if merged_prs.empty?
  else
    skip "Unsupported GitHub Actions event."
  end
rescue Skip => reason
  $stderr.puts reason
  exit 78
end
