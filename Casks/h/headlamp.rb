cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "e69b15eec19f90cae985872a91876c218a9d20b6c21f2f7be2d6e0fcd7385e39",
         intel: "94864e109443dc392aa7260f2cc8972a4b12b09d194cf3db4e947ec6cde56428"

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
