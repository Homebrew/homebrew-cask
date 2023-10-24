cask "torguard" do
  version "4.8.23"
  sha256 "16317a1c377014ba66c5bbb6f70e6b5db9019a79a9c73b5e060fb88733fd686e"

  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg",
      verified: "torguard.biz/"
  name "TorGuard"
  desc "VPN client"
  homepage "https://torguard.net/"

  livecheck do
    url "https://updates.torguard.biz/Software/MacOSX/checksums.sha256"
    regex(/TorGuard[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "Install TorGuard.pkg"

  uninstall pkgutil: "net.torguard.TorGuardDesktopQt",
            delete:  "/Applications/TorGuard.app"

  zap trash: [
    "~/Library/Preferences/net.torguard.TorGuard*.plist",
    "~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState",
  ]
end
