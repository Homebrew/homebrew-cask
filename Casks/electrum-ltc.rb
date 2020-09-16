cask "electrum-ltc" do
  version "3.3.8.1"
  sha256 "167c6d7eb21b1f064254e215adf826c6c77f22bcad8e1851645d33d1a4af65d4"

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast "https://electrum-ltc.org/"
  name "Electrum-LTC"
  homepage "https://electrum-ltc.org/"

  app "Electrum-LTC.app"
end
