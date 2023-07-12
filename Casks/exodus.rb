cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.7.12"
  sha256 arm:   "a257834f67b6ceb7252a6bfa1a95ddd31026904089e601f2049a70a191ad0a1e",
         intel: "67eeb5cf5a25a04d016fbdff80f87f90dd869d86a7dbeb3d334f4a464c95f8d0"

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
