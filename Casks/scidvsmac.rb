cask "scidvsmac" do
  version "4.21"
  sha256 "985c6bd395a93b14e697ef11ab2c36f4dd1fa374ed8799591ca8eb57c3ad0551"

  # downloads.sourceforge.net/scidvspc/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast "https://sourceforge.net/projects/scidvspc/rss"
  name "Scid vs. Mac"
  homepage "https://scidvspc.sourceforge.io/"

  app "ScidvsMac.app"
end
