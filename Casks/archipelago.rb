cask "archipelago" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "92ce07cd5984f63966a66219a3cdea3df88ea84c53c750928f1077daf839b43c",
         intel: "2ad8d09afc04aec3d6f9011cd029eb6958c058b598085619ec5c2ce8b6db88ab"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}#{arch}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"

  zap trash: [
    "~/Library/Application Support/Archipelago",
    "~/Library/Caches/dev.archipelago",
    "~/Library/Caches/dev.archipelago.ShipIt",
    "~/Library/HTTPStorages/dev.archipelago",
    "~/Library/Preferences/dev.archipelago.plist",
    "~/Library/Saved Application State/dev.archipelago.savedState",
  ]
end
