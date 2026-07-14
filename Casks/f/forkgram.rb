cask "forkgram" do
  arch arm: "arm64", intel: "x86"

  version "7.0.1"
  sha256 arm:   "5bfcad08e42ed3eeae8d3711a49437e14be0d9eeb5322429a76452c08d41d9ec",
         intel: "90e9d7b5fc7cd8f3249c0025d5ef9c37316b13713e020e072a236e17a96873c2"

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
