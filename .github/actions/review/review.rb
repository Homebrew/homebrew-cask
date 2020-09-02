require "json"

Homebrew.install_gem! "git_diff"
require "git_diff"

require_relative "git_diff_extensions"
using GitDiffExtension

require "utils/github"

ENV["GITHUB_EVENT_NAME"] = ENV.delete("HOMEBREW_GITHUB_EVENT_NAME")
ENV["GITHUB_EVENT_PATH"] = ENV.delete("HOMEBREW_GITHUB_EVENT_PATH")

event = JSON.parse(File.read(ENV.fetch("GITHUB_EVENT_PATH")))

def diff_for_pull_request(pr)
  diff_url = pr.fetch("diff_url")

  output, _, status = curl_output("--location", diff_url)

  GitDiff.from_string(output) if status.success?
end

def review_pull_request(pr)
  repo   = pr.fetch("base").fetch("repo").fetch("full_name")
  number = pr.fetch("number")
  sha    = pr.fetch("head").fetch("sha")

  tap = Tap.fetch(repo)
  pr_name = "#{tap.name}##{number}"

  if pr.fetch("labels").any?
    puts "Pull request #{pr_name} has labels."
    return
  end

  reviews = GitHub.open_api("#{pr.fetch("url")}/reviews")
  if reviews.any?
    puts "Pull request #{pr_name} has reviews."
    return
  end

  diff = diff_for_pull_request(pr)

  unless diff.simple?
    puts "Pull request #{pr_name} is not a “simple” version bump."
    return
  end

  if diff.version_changed?
    if diff.version_decreased?
      return {
        event: :COMMENT,
        message: "Version decreased from #{diff.old_version.inspect} to #{diff.new_version.inspect}."
      }
    end

    tap.install(full_clone: true) unless tap.installed?

    out, _ = system_command! 'git', args: ['-C', tap.path, 'log', '--pretty=format:', '-G', '\s+version\s+\'', '--follow', '--patch', '--', diff.cask_path]

    version_diff = GitDiff.from_string(out)
    previous_versions = version_diff.additions.select { |l| l.version? }.map { |l| l.version }.uniq

    if previous_versions.include?(diff.new_version)
      previous_version_list = previous_versions.map { |v| "  - `#{v}`" }.join("\n")

      return {
        event: :COMMENT,
        message: "Version changed to a previous version. Previous versions were:\n#{previous_version_list}",
      }
    end

    return {
      event: :APPROVE,
      message: "Simple version bump from #{diff.old_version.inspect} to #{diff.new_version.inspect}."
    }
  end

  {
    event: :APPROVE,
    message: "Simple checksum-only change."
  }
end

begin
  case ENV["GITHUB_EVENT_NAME"]
  when "pull_request", "pull_request_target"
    pr = event.fetch("pull_request")
    if output = review_pull_request(pr)
      message = output.fetch(:message)

      puts message
      puts "::set-output name=event::#{output.fetch(:event)}"
      puts "::set-output name=message::#{GitHub::Actions.escape(message)}"
    end
  else
    raise "Unsupported GitHub Actions event: #{ENV["GITHUB_EVENT_NAME"].inspect}"
  end
end
