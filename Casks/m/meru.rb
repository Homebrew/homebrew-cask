cask "meru" do
  arch arm: "-arm64"

  version "3.61.0"
  sha256 arm:   "afba189afe79b288aace99910ef39f3a8a3e4a3a9f1c78d61b73e748f460e3b5",
         intel: "f5fd6f01a4d5d38ff20e3926a4c38d80bff4ff2b3a24f85359a67361848f195b"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :monterey

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
