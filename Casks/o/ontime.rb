cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "6b9b67896970bf102740b9e054cfa4d24e4845fb345eecc7856d4b3e37e3fdf7",
         intel: "258dad1a025f1f579382455b32309d3b01d57392f9645bb98495e9fce0908029"

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
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
