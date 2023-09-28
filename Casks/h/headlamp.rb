cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "3807e62f5c5cb9f22ff6c92e664504b224624deb9977a5ac7d1fc28c472ae106",
         intel: "cff3409739d3d66faa3599d97fbc2ef9d3ff875ef59df64b6910881d74948461"

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
