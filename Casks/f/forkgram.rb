cask "forkgram" do
  arch arm: "arm64", intel: "x86"

  version "6.7.8"
  sha256 arm:   "9bc6d00b5da4357954095153a2005eb9bdca80c2b0475bb1a1c3f0177c507d31",
         intel: "30d8e065207930c9cf3dbfe7d7ef39b968736bdfe76638bb465310ea00957a2d"

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

  depends_on :macos

  app "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
