cask "mplayerx" do
  version "1.1.4,1920"
  sha256 "9306b11acd9df45464fc3ddca1a3a757f50ef019ea6a09ce13ad3f51f1ef1592"

  # github.com/niltsh/MPlayerX-Deploy/ was verified as official when first introduced to the cask
  url "https://github.com/niltsh/MPlayerX-Deploy/releases/download/#{version.before_comma}/MPlayerX-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml"
  name "MPlayerX"
  desc "Media player"
  homepage "http://mplayerx.org/"

  auto_updates true

  app "MPlayerX.app"

  zap trash: [
    "~/.mplayer",
    "~/Library/Application Support/MPlayerX",
    "~/Library/Preferences/org.niltsh.MPlayerX.LSSharedFileList.plist",
    "~/Library/Preferences/org.niltsh.MPlayerX.plist",
    "~/Library/Caches/org.niltsh.MPlayerX",
  ]
end
