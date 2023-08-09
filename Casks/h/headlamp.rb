cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "726ae4d45245697063ea1b13b5f8e689cc77809f8468a87567fb0cf958daa895",
         intel: "6dc6cd1b7b74da00e08b51e3ab2f54eb414f43ab6d15c060ef50fa0d33ac7cb0"

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
