cask "meru" do
  arch arm: "-arm64"

  version "3.63.1"
  sha256 arm:   "367af4b077f6758833e2d0b5ee85d28a52ab36ce18444a3f6e5b680716481c25",
         intel: "18c1b0f55f9dc13ba4fbfdda47f50d5298a3d7e24e7532cb07c02056f0e48e37"

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
