cask "spatterlight" do
  version "1.4.7"
  sha256 "922a8b3ca75c7d122a7b2b4b39f5863f418d3a562d5d338d4ac0df4f2cd0a885"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
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
