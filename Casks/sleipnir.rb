cask "sleipnir" do
  version "4.6.6,4.6.6004"
  sha256 :no_check

  url "https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg"
  name "Sleipnir"
  homepage "https://www.fenrir-inc.com/jp/sleipnir/"

  livecheck do
    url "https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml"
    strategy :sparkle
  end

  app "Sleipnir.app"
end
