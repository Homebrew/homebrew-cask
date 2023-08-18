cask "miniwol" do
  version "2.1.4"
  sha256 "2b4f146a8632e3313604707bb8f4606c8c3a528839a7f9dc77939c05e85569ce"

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
