cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.16.7"
  sha256 arm:   "3755b845ab96fbcc9594348b363840bd4f30ccf1467daf80a796d56c690aa2f9",
         intel: "d8bff346f0948beb8f955e5499de2deb651dd234654d7f4de245ae34d704762b"

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
