cask "syncovery" do
  arch = Hardware::CPU.intel? ? "" : "-Apple"

  version "9.47q"

  if Hardware::CPU.intel?
    sha256 "77fb7bf43bc8804dfc2a8aef89605f8f007a42a19cd7139f24975c808da0555a"
  else
    sha256 "110bd3d9337de29a7222fe37e51a0916a2f555b4ec06c2afc5381f6f8b1fee75"
  end

  url "https://www.syncovery.com/release/SyncoveryMac#{version}#{arch}.dmg"
  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac[._-]?v?(\d+(?:\.\d+)+[a-z]?)#{arch}\.dmg}i)
  end

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*"

  zap trash: [
    "~/Library/Application Support/Syncovery",
    "~/Library/Logs/Syncovery",
    "~/Library/Preferences/Syncovery.ini",
    "~/Library/Preferences/Syncovery",
    "~/Saved Application State/com.company.Syncovery.savedState",
  ]
end
