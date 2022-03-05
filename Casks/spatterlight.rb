cask "spatterlight" do
  version "0.9.2"
  sha256 "c95775a4903d517713c3857a08a0b336c1178d3ed329d4976cc5cff394d053be"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
