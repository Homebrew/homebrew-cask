cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "22.4.12"

  if Hardware::CPU.intel?
    sha256 "19038be7c1c61fd69c9ef5b1c778f120397c344859dd766a3f6f41156ebffdd3"
  else
    sha256 "4d87ed18d7b84a700c42a76079e89648c62d45e0dc0cec6e9cf0238f9598a030"
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
