cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.10.22"
  sha256 arm:   "813745b51863032ac73961d9ddfcf253d9e16858e8ad64130e79c51498fdd05c",
         intel: "ccbdd219bbaa08fad370dd54c3426d181a305bddd8d6f6c35ae2180a93bcf18e"

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
