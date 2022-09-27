cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.9.23"
  sha256 arm:   "6ca331bf24034f8347ded1062c53796d29059760f515d19802fe5012d275878b",
         intel: "57dea6b06f2a845f6bed7d9e35c32a800f7d93fb3a0257a0b6370c37b993ce8e"

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
