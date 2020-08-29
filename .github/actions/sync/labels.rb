#!/usr/bin/env ruby

require 'octokit'

github = Octokit::Client.new(access_token: ENV.fetch('GITHUB_TOKEN'))

from_repo, *to_repos = ARGV

dry_run = ENV["dry_run"] == 'true'

main_labels = github.labels(from_repo).freeze

to_repos.each do |repo|
  puts "#{repo}:"

  labels = github.labels(repo)

  puts JSON.pretty_generate(labels)

  deleted_labels = labels.select { |label| main_labels.none? { |main_label| main_label.name == label.name } }
  modified_labels = labels.select { |label| main_labels.any? { |main_label| main_label.name == label.name } }
  added_labels = main_labels.select { |main_label| (deleted_labels + modified_labels).none? { |label| main_label.name == label.name }  }

  added_labels.each do |added_label|
    if dry_run
      puts "Would add label “#{added_label.name}”…"
    else
      puts "Adding label “#{added_label.name}”…"
      github.add_label(repo, added_label.name, added_label.color, description: added_label.description)
    end
  end

  modified_labels.each do |modified_label|
    if dry_run
      puts "Would update label “#{modified_label.name}”…"
    else
      puts "Updating label “#{modified_label.name}”…"
      github.update_label(repo, modified_label.name, color: modified_label.color, description: modified_label.description)
    end
  end

  deleted_labels.each do |deleted_label|
    if dry_run
      puts "Would delete label “#{deleted_label.name}”…"
    else
      puts "Deleting label “#{deleted_label.name}”…"
      github.delete_label!(repo, deleted_label.name)
    end
  end

  puts
end
