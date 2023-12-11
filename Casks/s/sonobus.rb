cask "sonobus" do
  version "1.7.2"
  sha256 "4ba6eff849973238f45e0a3538b90c9a2d64c0b001d62882d0d337f46e0ddaa9"

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
