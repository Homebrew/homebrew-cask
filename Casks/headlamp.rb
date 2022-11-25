cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "3222ad49660dedb022ea270fb19157564d58769308dbe5120710543a17fef86c",
         intel: "f7d362053186c6bb322cab5a8718c2fc41f2c3fd14783820dfb4ddd06aa4bb94"

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
