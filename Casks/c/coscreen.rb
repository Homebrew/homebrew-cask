cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.4.14"
  sha256 arm:   "fb2c5bd6d53707f064074e4207b98d6c9239c3a8bda42415764028e7fcb324e4",
         intel: "507703ade05b28dd9f7793c6defbc0c41fe0ee2dc94f593af40255aa69ca4c9f"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
