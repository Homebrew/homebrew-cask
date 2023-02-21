cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.2.13"
  sha256 arm:   "60d9672cf47134fb3ab1ec6a5b53500a5f5878622ee839b051aa65080055bd46",
         intel: "7c08cd248754e489bfd1d0003eec7eeee627451307b6053be24893b2541396ac"

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
