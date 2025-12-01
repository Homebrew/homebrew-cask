cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.15"
  sha256 arm:   "26b5dc83c22d8939f19d6aeb3fa73898b066d0421973e8d2964cab6b4c8809fd",
         intel: "6946139f0692066f511c392c62d1e1ed868c09fefc35b016394765fefd3e0096"

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
