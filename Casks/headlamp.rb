cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "83aaed8f87a4c6aba49a10c83888e8eff2b8eee9c0142a211978a9a2c5baf78b",
         intel: "0478bad98890926c0face47ba7cbacf5422505998816fe787de9d9cc515dd6c5"

  url "https://github.com/kinvolk/headlamp/releases/download/v#{version}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/kinvolk/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://kinvolk.github.io/headlamp"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
