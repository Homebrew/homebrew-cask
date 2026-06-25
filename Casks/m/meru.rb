cask "meru" do
  arch arm: "-arm64"

  version "3.52.0"
  sha256 arm:   "42caa30a9943d7334501ed3531843938f11bad819b559d065ca72929fc030004",
         intel: "c9481bf7fdc73f7f86172d9ba01833e234e63c766965e870ff379d8ad2b592f4"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg",
      verified: "github.com/zoidsh/meru/"
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
