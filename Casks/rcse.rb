cask "rcse" do
  version "1.9.3"
  sha256 "bc70301db1cc9ee9d3ada99a6d9d8014580b547bec98f529711b3b2dbfcf5359"

  # downloads.sourceforge.net/rolisteam/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/rolisteam/rcse_v#{version}_MacOs.dmg"
  appcast "https://sourceforge.net/projects/rolisteam/rss"
  name "Rolisteam Character Sheet Editor (RCSE)"
  homepage "https://rolisteam.org/"

  app "rcse.app"
end
