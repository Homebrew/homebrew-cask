cask "hydrogen" do
  version "1.0.0"
  sha256 "491c44ca4e1204ac86e89154707ba6722c271210b1ad5c118dea7d1a14ccf864"

  # downloads.sourceforge.net/hydrogen/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hydrogen/Hydrogen-#{version}.dmg"
  appcast "https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen"
  name "Hydrogen"
  homepage "http://www.hydrogen-music.org/"

  depends_on macos: ">= :sierra"

  app "hydrogen.app"
end
