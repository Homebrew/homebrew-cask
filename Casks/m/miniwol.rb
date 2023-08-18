cask "miniwol" do
  version "2.1.4"
  sha256 "ab9cf31a15339fa548edf35754edaa4f1d5b824fdd92d56a1dead20c0087b8aa"

  url "https://www.tweaking4all.com/downloads/network/miniWOL-v#{version}-64bit.dmg"
  name "miniWOL"
  desc "Small menu bar tool for sending Wake on LAN (WOL) network packets"
  homepage "https://www.tweaking4all.com/network-internet/miniwol2/"

  livecheck do
    url "https://www.tweaking4all.com/downloads/"
    regex(/href=.*?miniWOL[._-]v?(\d+(?:\.\d+)+)-64bit\.dmg/i)
  end

  app "miniWOL.app"

  zap trash: [
    "~/Library/Preferences/com.Tweaking4all.miniWOL.plist",
    "~/Library/Preferences/miniWOL",
  ]
end
