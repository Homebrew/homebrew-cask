cask "archipelago" do
  version "6.0.4"
  sha256 "e7dd0b63c8c159b69df5b6baeb75aab63cad1f774570b28ff0dd1b4159f6aa60"

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
