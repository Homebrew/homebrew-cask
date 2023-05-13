cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.5.8"
  sha256 arm:   "d5a63eca38bac9bd2c1b1af58e4e5762018240dbf013efc39238732118cb2fa9",
         intel: "f2d781cb1c0cc2bf08fd5842f3f52fd0a743feee93ca0f346ade15bf44918f7a"

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
