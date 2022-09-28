cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.9.28"
  sha256 arm:   "25971733220ceb5bcd157fcbee2f434c57a9cdeeaf69eadd780910dceaa6195a",
         intel: "682f91ceb60977d15d3eb6016741b24035231ac5cbb994f35369d544d97dbdc9"

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
