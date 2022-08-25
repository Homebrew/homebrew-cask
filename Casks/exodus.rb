cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.8.26"
  sha256 arm:   "b2844cab7ec752bbdf6fed826c92f704abae157b6a6504af0f2c87f8eeb59319",
         intel: "e6c1036631025ff625b2cd24e8e31bcb4a97717756df0aaa6acdcf345bc2c784"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
