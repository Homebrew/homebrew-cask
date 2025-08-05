cask "electrum-ltc" do
  version "4.2.2.1"
  sha256 "dc71b45bc9cb965578cb819e5c68b027ed80002e5f86195b85259a009fe24373"

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  name "Electrum-LTC"
  desc "Litecoin wallet"
  homepage "https://electrum-ltc.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/electrum[._-]ltc[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Electrum-LTC.app"

  zap trash: "~/.electrum-ltc"

  caveats do
    requires_rosetta
  end
end
