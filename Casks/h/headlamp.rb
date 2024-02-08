cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "b62998c1fe81be2d1b4956b0e43a0ce0c2fa00d6b68afa28b8594580830a9890",
         intel: "631fffcfec6a6c9d2b32f943bb0f948c16a5d981cbeb41e3126891f14c3cef86"

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
