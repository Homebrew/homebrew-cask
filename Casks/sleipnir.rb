cask "sleipnir" do
  version "4.6.6"
  sha256 :no_check

  url "https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg"
  appcast "https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml"
  name "Sleipnir"
  homepage "https://www.fenrir-inc.com/jp/sleipnir/"

  app "Sleipnir.app"
end
