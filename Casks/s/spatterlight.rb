cask "spatterlight" do
  version "1.4.6"
  sha256 "daa59dc4f8765f922efec6ca278f47e6d03da30a6313392ee888cc2de51907c2"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.app.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
