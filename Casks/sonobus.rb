cask "sonobus" do
  version "1.6.2"
  sha256 "957930a3b48eae4694f49b7015e3faebf99fe0ac280f643c2537ee354cec2881"

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
