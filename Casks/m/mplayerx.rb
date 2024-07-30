cask "mplayerx" do
  version "1.1.4,1920"
  sha256 "9306b11acd9df45464fc3ddca1a3a757f50ef019ea6a09ce13ad3f51f1ef1592"

  url "https://github.com/niltsh/MPlayerX-Deploy/releases/download/#{version.csv.first}/MPlayerX-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/niltsh/MPlayerX-Deploy/"
  name "MPlayerX"
  desc "Media player"
  homepage "http://mplayerx.org/"

  deprecate! date: "2024-07-27", because: :unmaintained

  auto_updates true

  app "MPlayerX.app"

  zap trash: [
    "~/.mplayer",
    "~/Library/Application Support/MPlayerX",
    "~/Library/Caches/org.niltsh.MPlayerX",
    "~/Library/Preferences/org.niltsh.MPlayerX.LSSharedFileList.plist",
    "~/Library/Preferences/org.niltsh.MPlayerX.plist",
  ]

  caveats do
    requires_rosetta
  end
end
