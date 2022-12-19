cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.12.19"
  sha256 arm:   "1ae9017f560af0f0e2f68d4f73a8a0b5dc00c2c49a06b6accbea0513ece129fa",
         intel: "ee01b7043799c9893947e49a6d1ee9c0a12779fb445bb890b156090f4e5aa1c7"

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
