cask "cider" do
  version "1.5.6-beta.35"
  sha256 "8cb735e4c7bddb451768f611130ee5023bc14b322fa4ff80564f472dfe89dc39"

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
