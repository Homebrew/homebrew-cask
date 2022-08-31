cask "cider" do
  version "1.5.6"
  sha256 "4dadcda0a36d7712c13a7c9430fd814037d34b35c38760d01920299366885047"

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
