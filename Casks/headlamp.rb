cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "f0871b27205fb2d6f8b53b8c8710eb42823d7145392f657a919dc6b357511e8e",
         intel: "b7b897e050da8c53587e6036da628e631a3977ef3c6f46d4ffcae3a4d7e32594"

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
