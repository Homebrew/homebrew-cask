cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.5.22"
  sha256 arm:   "02d9b12c79b70732e71e7a6ff9fc46e63481b87a5a8d21a403eeec0a503bb7ba",
         intel: "9f6b39cb4c47f96d75e9f3611915e684bcf9e31af5ca995fb3fac739559baf79"

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
