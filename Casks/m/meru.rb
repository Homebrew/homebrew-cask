cask "meru" do
  arch arm: "-arm64"

  version "3.23.1"
  sha256 arm:   "9b57871a0e3bf993302454c6de3de6521bf93fa2f8bed31b40e53bd75c2f0739",
         intel: "9d33412ae883d21f18fb5f3d37b71c9b16a47701c75e5b147f49a728de1d6f8e"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg",
      verified: "github.com/zoidsh/meru/"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: ">= :monterey"

  app "Meru.app"

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
