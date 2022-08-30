cask "cider" do
  version "1.5.6-beta.9"
  sha256 "855e86be22b2b402fdbd16b41ee8e7dabfebcd446ca68404bb3f2aae4c9d7c9b"

  url "https://github.com/ciderapp/cider-releases/releases/download/v#{version}/Cider-#{version}-universal.dmg",
      verified: "github.com/ciderapp/cider-releases"
  name "Cider"
  desc "Open source and community oriented Apple Music client"
  homepage "https://cider.sh/"

  livecheck do
    url :url
    regex(/href=.*?Cider[._-]v?(\d+(?:\.\d+)+[^"' >]*?)(?:[._-]universal)?\.dmg/i)
    strategy :github_latest
  end

  auto_updates true

  app "Cider.app"

  zap trash: [
    "~/Library/Application Support/Cider",
    "~/Library/Logs/Cider",
    "~/Library/Preferences/cider.plist",
    "~/Library/Saved Application State/cider.savedState",
  ]
end
