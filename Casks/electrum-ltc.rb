cask "electrum-ltc" do
  version "4.0.9.1"
  sha256 "08143c9fbeb1e0ae9f183b0fc9ef0cd1a726a49ea25b9c7d2f25f43da20c06d8"

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
