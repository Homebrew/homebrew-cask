cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "6.5.1"
  sha256 arm:   "a95293318fd23302899ce7d8a397aa8a04f48130c482020fa9ac74724463fef2",
         intel: "53b0a7e0c10e1eae6d3b9c5c78a656b426798d4b00c7089e0c080adf50d5beca"

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

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
