cask "forkgram" do
  arch arm: "arm64", intel: "x86"

  version "7.0.5"
  sha256 arm:   "d1761d1cfe7857470b08b33e31d2a4797903bacd6b17be9dc2469fa65810b869",
         intel: "1ab231dff76832406cbcb6fbc1a79df60ce15f47033e29dfaa35facee6338f54"

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
