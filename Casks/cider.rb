cask "cider" do
  version "1.5.6-beta.8"
  sha256 "2e37c7b4a40c66ee703cdf38649822d4ccd1efca6740be3cf486101139c804fd"

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
