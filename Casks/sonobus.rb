cask "sonobus" do
  version "1.4.8"
  sha256 "acff94167d7253f5b33f3668681a3f6ec797532b9ffca9cd2db3131cb6513626"

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
    "net.sonobus.pkg.vst2",
    "net.sonobus.pkg.vst3",
    "net.sonobus.pkg.au",
    "net.sonobus.pkg.app",
  ]

  zap trash: [
    "~/Library/Application Support/SonoBus",
    "~/Library/Caches/com.Sonosaurus.SonoBus",
    "~/Library/Saved Application State/com.Sonosaurus.SonoBus.savedState",
  ]
end
