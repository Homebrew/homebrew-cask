cask "cider" do
  version "1.5.6-beta.49"
  sha256 "3f1779b61260b13280d60a73915f69d44880bde85e66c6935135ae0cf601e9e4"

  url "https://github.com/ciderapp/cider-releases/releases/download/v#{version}/Cider-#{version}-universal.dmg",
      verified: "github.com/ciderapp/cider-releases"
  name "Cider"
  desc "Open source and community oriented Apple Music client"
  homepage "https://cider.sh/"

  livecheck do
    url "https://github.com/ciderapp/cider-releases/releases?q=prerelease%3Afalse&expanded=true"
    regex(/href=.*?Cider[._-]v?(\d+(?:\.\d+)+[^"' >]*?)(?:[._-]universal)?\.dmg/i)
    strategy :page_match
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
