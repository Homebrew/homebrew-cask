cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "490d546dc6d325ff5dac510aa1f4774046e694c1abf264ab4479506dc9b75456",
         intel: "e237675d03c5ab3131948b18bafb6a928ff27b5082af9d6c3a1963327afba05f"

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
