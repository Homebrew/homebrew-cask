cask "forkgram" do
  arch arm: "arm64", intel: "x86"

  version "6.7.1"
  sha256 arm:   "b79b2bd080c075e237833c5887209b4a04c937bfc23aab9c289d412705a06875",
         intel: "369bc92ec53400460725b4081522e04f9d0ad881eaeae36fa422ac9cfbb59787"

  url "https://github.com/Forkgram/tdesktop/releases/download/v#{version}/Forkgram.macOS.no.auto-update_#{arch}.zip"
  name "Forkgram"
  desc "Fork of Telegram Desktop"
  homepage "https://github.com/Forkgram/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^Forkgram[._-]macOS[._-].*?#{arch}\.zip$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
