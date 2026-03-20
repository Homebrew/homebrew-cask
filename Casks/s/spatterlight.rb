cask "spatterlight" do
  version "1.4.8"
  sha256 "1b300c30995373acb5844e4bfed82f96f6af7eafe2e76ee73e8d37842dd72ed3"

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
