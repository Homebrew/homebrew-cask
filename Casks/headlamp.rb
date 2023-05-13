cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "360073ec620c6c67ef760bc276b43884c72702d7a8547855eb91f89173af21ab",
         intel: "9715e8009991667b84e7b7e34214fc3e609d212caeb28b2a2165f80adc0572df"

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
