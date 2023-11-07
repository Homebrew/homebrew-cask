cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "c7b48eba2490417542305ebe10df8a370be6b6da8894a556c62916f10061543e",
         intel: "07440b3e8938c24c3809441c0abf411dbfa1dea4076c9981dc742e6ef72a925a"

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
