cask "sonobus" do
  version "1.4.2"
  sha256 "44654fce01e82f44a69e9ec91775a2394282bd02fa9cd205776d861469096a06"

  url "https://sonobus.net/releases/sonobus-#{version}-mac.dmg"
  name "SonoBus"
  desc "High-quality network audio streaming"
  homepage "https://sonobus.net/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href="releases/.*?-(.+)-mac\.dmg}i)
  end

  pkg "SonoBus Installer.png"

  uninstall pkgutil: [
    "net.sonobus.pkg.aax",
    "net.sonobus.pkg.vst2",
    "net.sonobus.pkg.vst3",
    "net.sonobus.pkg.au",
    "net.sonobus.pkg.app",
  ]
end
