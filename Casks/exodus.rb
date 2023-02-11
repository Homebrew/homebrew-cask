cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.1.30"
  sha256 arm:   "53089bdc61fe9df39be1ab56943306d7dc932c049778971e460dc3c91f6377d2",
         intel: "14671fae1375d1d7775be47a67c3fa1fc42473113e18a499dcd606b5890d6cbb"

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
