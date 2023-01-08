cask "sonobus" do
  version "1.6.0"
  sha256 "99983a0f5e64c8220c6e5a308e60c8c440c248792ef86a7936f24f8dee9a04be"

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
