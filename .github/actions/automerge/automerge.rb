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
ENV["GITHUB_TOKEN"]      = ENV.delete("HOMEBREW_GITHUB_TOKEN")
ENV["GITHUB_WORKFLOW"]   = ENV.delete("HOMEBREW_GITHUB_WORKFLOW")
ENV["GITHUB_WORKSPACE"]  = ENV.delete("HOMEBREW_GITHUB_WORKSPACE")

def skip(message = nil)
  puts message
  exit 78
end

event = JSON.parse(File.read(ENV.fetch("GITHUB_EVENT_PATH")))

puts "ENV"
puts JSON.pretty_generate(Hash[ENV.to_h.sort_by { |k, | k }])
puts

puts "EVENT:"
puts JSON.pretty_generate(event)
puts

skip "Not a Travis status." if event.fetch("context") != "continuous-integration/travis-ci/pr"
skip "Status not successful." if event.fetch("state") != "success"

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

def merge_pull_request(pr)
  repo   = pr.fetch("base").fetch("repo").fetch("full_name")
  number = pr.fetch("number")
  sha    = pr.fetch("head").fetch("sha")

  puts "GITHUB_SHA: #{ENV["GITHUB_SHA"]}"
  puts "PR_SHA:     #{sha}"

  begin
    tries ||= 0

    GitHub.merge_pull_request(
      repo,
      number: number, sha: sha,
      merge_method: :squash,
    )
  rescue => e
    $stderr.puts e
    raise if (tries += 1) > 3
    sleep 5
    retry
  end
end

def check_diff(diff)
  diff.single_cask? && diff.only_version_or_checksum?
end

pr = find_pull_request_for_status(event)

puts "PR:"
puts JSON.pretty_generate(pr)
puts

diff = diff_for_pull_request(pr)
skip "Not a “simple” version bump PR." unless check_diff(diff)

puts "Merging pull request #{pr.fetch("number")}…"
# merge_pull_request(pr)
