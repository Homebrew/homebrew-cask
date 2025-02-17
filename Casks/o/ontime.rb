cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.11.1"
  sha256 arm:   "4ca6ad7e6300731bf11e5ab9f1dcd6d7502422c909a2eb1ddf51eae38590151e",
         intel: "eee8e8726d785a6981f5694b17ef4ca9a6267b9ec5b0d57b7ae5703ad5c61253"

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
