cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.9.2"
  sha256 arm:   "b83ca3c694d162816a81c723f2fdb705a5c9e6fc3dfc33892a505bf3d6deb8bf",
         intel: "cf22942b4b98fea4b0972032a48516d671f52bd43e635bada965f414d5a59343"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
