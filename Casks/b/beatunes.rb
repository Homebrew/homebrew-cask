cask "beatunes" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.0"
  sha256 arm:   "d7349300adefbd7a2f59ac6420c876106cee05976ea624a1f05a6c047fb91276",
         intel: "ef8084f893d4f80a0b1f49fd68743b74173a4bc9af7aa1d70dcf09b47aea54f0"

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
