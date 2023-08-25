cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "e70bb9247a94751058413b4301287e1c0f874ded8be83f1e2dc9ac7dd6d39065",
         intel: "cdd6529c6b102febf13654d1bcb9d58c36db368ae7576e7f1b8acbc5446ee190"

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
