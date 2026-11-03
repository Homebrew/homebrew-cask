cask "meru" do
  arch arm: "-arm64"

  version "3.64.1"
  sha256 arm:   "7b712dee9a577abefbda3d8e8b59a93c655e61246bd51db04352e7295a1e71ab",
         intel: "3dc2545c00cf17cbbb668284bc657a418f91fe7a7efae2ea9e2c55e471a9b055"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :ventura

  app "Meru.app"

  uninstall quit: "sh.zoid.meru"

  zap trash: [
    "~/Library/Application Support/Meru",
    "~/Library/Caches/meru-updater",
    "~/Library/Caches/sh.zoid.meru",
    "~/Library/Caches/sh.zoid.meru.ShipIt",
    "~/Library/HTTPStorages/sh.zoid.meru",
    "~/Library/Logs/Meru",
    "~/Library/Preferences/sh.zoid.meru.plist",
    "~/Library/Saved Application State/sh.zoid.meru.savedState",
    "~/Library/WebKit/sh.zoid.meru",
  ]
end
