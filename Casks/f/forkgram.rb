cask "forkgram" do
  arch arm: "arm64", intel: "x86"

  version "6.7.7"
  sha256 arm:   "8741d8890d08086e45aef88343c618bb66469b5c69aff0e85881d29643d3a749",
         intel: "7383d7db5ec4afed04d58b8005bb0c4143688e05d57d181ab043f218e85904ba"

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
