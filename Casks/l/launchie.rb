cask "launchie" do
  
  version "1.0.13"
  sha256 :no_check
  
  url "https://github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/releases/download/1.0.13/Launchie_{version}.dmg",
      verified: "github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/"
  name "Launchie"
  desc "Replacement for the MacOS Launchpad that was removed by apple in MacOS 26"
  homepage "https://www.launchie.app/"
  
  livecheck do
    url :url
    strategy :github_latest
  end
  
  depends_on macos: ">= :tahoe"
  
  app "Launchie.app"
  
  zap trash: [
    "~/Library/Containers/de.nick-friedrich.Launchie",
    "~/Library/Application Scripts/de.nick-friedrich.Launchie",
  ]
end
