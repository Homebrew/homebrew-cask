cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.1.2"
  sha256 arm:   "25a8166ccd64452c018b5070ad51bc949225ced116471a3c79636bea5975c155",
         intel: "418a607567b55336910eff581cdf219f8dc2f17c3d6d39d0be2cdc00516311f2"

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
