cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "062068070eefe91aed577ce743943905f0524e32071b1a1e5f28de4ebe539961",
         intel: "d4080130c5940a011bdc48798267c1416715e7e747e21bfd7d890d34aa1971f4"

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
