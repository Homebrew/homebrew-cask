cask "beatunes" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.3"
  sha256 arm:   "477edced2e79780c6b9d5ccebf6838df8d9858be039193c0983aac726b4c9df6",
         intel: "dc226214820a4cbae283e6ac6e06f67407de55b27a9bcb481ded6668f9bd8b75"

  url "https://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}-#{arch}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/download-dmg-#{arch}.html"
    regex(/href=.*?beaTunes[._-]?v?(\d+(?:-\d+)+)[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on :macos

  app "beaTunes.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
