cask "deskreen" do
  version "2.0.3"
  sha256 "67d55ceb38bf8726ca446003522f544996a0a9740c8dbaef2be29a1fd3c8e04d"

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
