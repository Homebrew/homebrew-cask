cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "ea0ddeb12f7b3b32346f438586324c25583f9bc127128660f972fbc4823cdcba",
         intel: "a091c9f833b030f1cd7cf99873d7e670581a772e9737bec7f78b77db5ddb2409"

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
