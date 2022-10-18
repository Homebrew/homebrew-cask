cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "181572d48843adc708d1e2b65860afd5c7909cecf3cdf50864407a48e50baaa2",
         intel: "a3519a56b5554fbe9afdfef736c7c5b1655ea83e8b4e4b75e6028055fde45284"

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
