cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "22.4.22"

  if Hardware::CPU.intel?
    sha256 "3bae37d17bf72d4068d11122a0a87be390c16b61a0b2c9395853564fb9b31d14"
  else
    sha256 "70f8dfebef4a5231df6c4ec8589c6712feac7dfb5b9bec9b2206f8427ec1651e"
  end

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
