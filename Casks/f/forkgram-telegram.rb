cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "5.6.4"
  sha256 arm:   "3ace39d2ed480f9e4e57e435d6a714c56693f62229e31146fcd59608dab169ff",
         intel: "d5b57a18d67f475753ed2505bf150773c50d6a7b690b74636738dac22dd1549b"

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

        match = release["tag_name"].match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
