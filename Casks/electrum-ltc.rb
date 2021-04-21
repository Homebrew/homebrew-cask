cask "electrum-ltc" do
  version "4.0.9.3"
  sha256 "6a85d6804c3f12058bdf6f5eae755e783c51a2c3fbf4d6b838f586ba11d8dbf6"

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  name "Electrum-LTC"
  homepage "https://electrum-ltc.org/"

  livecheck do
    url "https://electrum-ltc.org/"
    strategy :page_match
    regex(%r{href=.*?/electrum-ltc-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Electrum-LTC.app"
end
