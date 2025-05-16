cask "meru" do
  arch arm: "-arm64"

  version "3.5.1"
  sha256 arm:   "5e81fcbba7d5ccc62744a4623dee453f94bae5d08b5e5ab3ac7c0b7611ae7d15",
         intel: "7d5a39ed37efd4d0b31b3236bc0cada229326b28d0f1c51937a75f2a9638eec8"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg",
      verified: "github.com/zoidsh/meru/"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: ">= :big_sur"

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
