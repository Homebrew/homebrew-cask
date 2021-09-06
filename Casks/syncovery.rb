cask "syncovery" do
  version "9.38g"

  if Hardware::CPU.intel?
    sha256 "1fe2dab73e91f2251fdf565dafd267abc82e2c4198bd8fe6560c805d2a59bc8b"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}.dmg"
  else
    sha256 "f27786be3c6ebdaf416932f764de0ddaaff0aa8e47c82e1c3266d049099c6bb2"

    url "https://www.syncovery.com/release/SyncoveryMac#{version}-Apple.dmg"
  end

  name "Syncovery"
  desc "File synchronization and backup software"
  homepage "https://www.syncovery.com/"

  livecheck do
    url "https://www.syncovery.com/download/mac/"
    regex(%r{href=.*?/SyncoveryMac(\d+(?:\.\d+)*[a-z]?)\.dmg}i)
  end

  pkg "SyncoveryMac (double-click to install).pkg"

  uninstall pkgutil: "com.company.Syncovery*"

  zap trash: "~/Library/Preferences/Syncovery.ini",
      rmdir: [
        "~/Library/Application Support/Syncovery",
        "~/Saved Application State/com.company.Syncovery.savedState",
        "~/Library/Preferences/Syncovery",
        "~/Library/Logs/Syncovery",
      ]
end
