cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "6f7cb329966228393053c025a7bfbd0cc6d11a37aa0d12831773eaef050e3cfc",
         intel: "fc8bc2ebf051ac63f36c0a4c5f85da3e7213c4158e070d776ee5774f0f77a36f"

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
