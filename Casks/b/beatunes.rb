cask "beatunes" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.1"
  sha256 arm:   "afb087619657cfcce487debaa1e20d344d3d5c9dacf63b8bdaab3507c619a044",
         intel: "0b32ad2f910182e7d436bfb5236f6c5526f99a805f4c05558afe0f94cb5fddcc"

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
