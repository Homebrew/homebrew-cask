cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "4e834ae655e70593b2473b0795e78b4dc8d97894ec4559985b27ce8a1304e79e",
         intel: "11ad3bed3a9a905f5c75105db4b0ce5cb341f4a155d1d0a217511810be1b2f27"

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
