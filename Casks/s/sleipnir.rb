cask "sleipnir" do
  version "4.6.6"
  sha256 :no_check

  url "https://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg"
  name "Sleipnir"
  desc "Web browser"
  homepage "https://www.fenrir-inc.com/jp/sleipnir/"

  livecheck do
    url "https://update.fenrir.co.jp/smartupdate/mac/sleipnir/appcast.xml"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Sleipnir.app"

  caveats do
    requires_rosetta
  end
end
