cask "electrum-ltc" do
  version "4.0.9.2"
  sha256 "e5af2e19818afbbeaec62c915d0828c57ee43543b691df3371059111e2a087f1"

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
