cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "872972d38c6080fc940ee28d3e41d46358ab32878664adb4eee580f92324eeb8",
         intel: "bea70e42c788c8edcfc4c504ad8a77b6e0133aa2d28fe0a2e246a2efb80fa95f"

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
