cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "2def838c3995e0df21dce245d880f325d3e4d9c11b0c82ea0753253f730dc665",
         intel: "1923beef3b381ebe8fa77285fd63f41c26ea1a99f0286b579f9877d67444ab31"

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
