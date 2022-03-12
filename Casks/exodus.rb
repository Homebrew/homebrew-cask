cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "22.3.11"

  if Hardware::CPU.intel?
    sha256 "44f210523729cb8848f6e57d026b335369247b40ede34e9d55043a030951b414"
  else
    sha256 "73019695bc53bddd72c58ac485080e8c24a5719af0fe296ba8f9c46b94562665"
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
