cask "deskreen" do
  version "2.0.1"
  sha256 "ffe6b3490a97f582d200bceb860df993a1ad5337b3c0bad826a70ab766d7b57d"

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
