cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0"
  sha256 arm:   "b19c31d0e9cc23a03ee677767bbbbea368899f8f74d0f7e7547d47a696403156",
         intel: "e14d876b5b818a233af0d05b35d8aa2bb22769fddce2a1009e60c658fdc918a9"

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
