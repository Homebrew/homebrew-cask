cask "playonmac" do
  version "4.4.2"
  sha256 "8f458bcf14ed7431acfec1dc79d0e917bf450da89c78a13b5a6f3deeddbe4a8b"

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name "PlayOnMac"
  desc "Allows installation and use of software designed for Windows"
  homepage "https://www.playonmac.com/"

  livecheck do
    url "https://www.playonmac.com/en/download.html"
    strategy :page_match
    regex(%r{href=.*?/PlayOnMac_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "PlayOnMac.app"

  zap trash: [
    "~/Library/PlayOnMac",
    "~/Library/Preferences/org.playonmac.playonmac.plist",
    "~/Library/Saved Application State/org.playonmac.playonmac.savedState",
  ]
end
