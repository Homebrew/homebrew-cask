cask "archipelago" do
  arch arm: "-arm64"

  version "5.0.2"
  sha256 arm:   "c88c245966506f85b3381b522c8462659a8898610f167309b59d492c3afeda36",
         intel: "9f9691829010bdaa314472d8dccb07a0a2bdb7245a96e723b4fd75c8cd758a19"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}#{arch}-mac.zip"
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
