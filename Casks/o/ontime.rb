cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.10.0"
  sha256 arm:   "dd06f1ce6bc73a304c069414614c186b0acab86474df68f65dd9cab63bc5a759",
         intel: "8fa53800d6e9fdf8ff9d463e7215f5156272b8487f733547b084db92e114cdaf"

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
  depends_on macos: :monterey

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
