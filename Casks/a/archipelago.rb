cask "archipelago" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "05cc3c36708d7f1094ec1688f3546a9603da9f1509db7fc3e8b5f36283a1c49b",
         intel: "57f24ee903337773ee96725ebb9709c3015d60fcc878b0ac871a8551a3fbe471"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}#{arch}-mac.zip"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  depends_on macos: ">= :high_sierra"

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
