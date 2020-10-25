cask "mechvibes" do
  version "2.2.0"
  sha256 "3da58cac995893c9f42f1ebc59b0b03d59681ded3482a15639658ddfdf2419d5"

  # downloads.sourceforge.net/mechvibes/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mechvibes/v#{version}/Mechvibes-#{version}.dmg"
  appcast "https://sourceforge.net/projects/mechvibes/rss"
  name "Mechvibes"
  desc "Play mechanical keyboard sounds as you type"
  homepage "https://mechvibes.com/"

  app "Mechvibes.app"
end
