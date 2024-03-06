cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "d42f31ccb98d6c4e3db630b54fe79a595f8dc2c7fff7268b7cee0ec8b0e5824f",
         intel: "a53a27f822dc525b06b14d0d3e029189adcefe0c0fc3c711120cccbb25efbf4c"

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
