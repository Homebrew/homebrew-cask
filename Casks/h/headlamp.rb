cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "55d3afd26f685f069b905706dd1c9c8dc3a12aa9a98c4d6c94880d058eb682ee",
         intel: "5ad17025029de51e314e94a9a62e56f44974415176828edcd3bea02eb671b6bf"

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
