cask "meru" do
  arch arm: "-arm64"

  version "3.59.0"
  sha256 arm:   "82577cb20a70273545f791995235b3dafcb9fcc9f03b9ff63166d025cb246c75",
         intel: "4e9a1f2b73dd5f441dc49dc90275955fee14f0b02de41bf61b7886cf28c63ec3"

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
