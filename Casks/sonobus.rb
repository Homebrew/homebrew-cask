cask "sonobus" do
  version "1.6.1"
  sha256 "e9a0c34ca324259d1633c8b3b0b47b12281ac5af95fd328e89c6ca57c830127e"

  url "https://sonobus.net/releases/sonobus-#{version}-mac.dmg"
  name "SonoBus"
  desc "High-quality network audio streaming"
  homepage "https://sonobus.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/sonobus[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg}i)
  end

  pkg "SonoBus Installer.pkg"

  uninstall pkgutil: [
    "net.sonobus.pkg.aax",
    "net.sonobus.pkg.app",
    "net.sonobus.pkg.au",
    "net.sonobus.pkg.vst2",
    "net.sonobus.pkg.vst3",
  ]

  zap trash: [
    "~/Library/Application Support/SonoBus",
    "~/Library/Caches/com.Sonosaurus.SonoBus",
    "~/Library/Saved Application State/com.Sonosaurus.SonoBus.savedState",
  ]
end
