cask "archipelago" do
  version "6.0.3"
  sha256 "003a6486536d6baf56659ed2db7fd1452da01361b6bb72871f36e30be8c068ea"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago.zip"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  depends_on macos: ">= :sonoma"

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
