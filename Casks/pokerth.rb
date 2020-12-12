cask "pokerth" do
  version "1.1.2"
  sha256 "bce46072dd13ebfa6253a49aca92d9ca28c28f77cb63831d5ed67b7b167ef7a3"

  # downloads.sourceforge.net/pokerth/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pokerth/PokerTH_#{version}.dmg"
  appcast "https://sourceforge.net/projects/pokerth/rss"
  name "PokerTH"
  homepage "https://www.pokerth.net/"

  app "pokerth.app"
end
