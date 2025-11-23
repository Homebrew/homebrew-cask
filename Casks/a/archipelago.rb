cask "archipelago" do
  version "6.0.8"
  sha256 "58e394886db7e5a32feeb48d7b78951ee230689bf79279e67f79c881df42bb1f"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago.zip"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  depends_on macos: ">= :sequoia"

  app "Archipelago.app"

  zap trash: [
    "~/Library/Application Support/Archipelago",
    "~/Library/Caches/dev.archipelago",
    "~/Library/Caches/dev.archipelago.ShipIt",
    "~/Library/HTTPStorages/dev.archipelago",
    "~/Library/Preferences/dev.archipelago.plist",
    "~/Library/Saved Application State/dev.archipelago.savedState",
    "~/Library/WebKit/dev.archipelago",
  ]
end
