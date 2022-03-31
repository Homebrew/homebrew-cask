cask "sonobus" do
  version "1.5.1"
  sha256 "49712ce5726b21ffff6bed1070c65eb0cc4d70ba748a96deac62b487a72a9a92"

  url "https://sonobus.net/releases/sonobus-#{version}-mac.dmg"
  name "SonoBus"
  desc "High-quality network audio streaming"
  homepage "https://sonobus.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/sonobus[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

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
