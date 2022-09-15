cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.9.8"
  sha256 arm:   "2f95ce441a2deda0a3d5646582611e60762e20600edaf5ef495e6719a2b59d1c",
         intel: "5ff6ead59c43e54ddfbbcb0a1c50f89a38e77f08ad152619cff51ff61402f376"

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
