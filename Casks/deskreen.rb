cask "deskreen" do
  version "1.0.12"
  sha256 "1d4ecdf3fd9977bc28427641e685e4d453661533f458087a88d03a374b66cd43"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-#{version}.dmg",
      verified: "https://github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Deskreen.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
