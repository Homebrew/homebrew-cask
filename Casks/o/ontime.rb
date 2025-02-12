cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "f481869c7fc301fbac02219b807a782cf4dae476ec5fd4a3155dcfe88eb61014",
         intel: "9b1263b54a6538419465503315be80855d75fb8773fe46f36cb39f0f183955b1"

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
