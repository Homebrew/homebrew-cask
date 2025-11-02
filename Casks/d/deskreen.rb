cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "36366cbf0dcd07293f0b05b6fff5a546b67eea02021111da07d1cbd189cb49f3",
         intel: "cbfc9d3c8f71c2320c18b9161b3c9cc8951165034b53e3d1fd2ef1e3187f6883"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
