cask "mame" do
  version "0.135"
  sha256 "fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e"

  # downloads.sourceforge.net/mameosx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  appcast "https://sourceforge.net/projects/mameosx/rss"
  name "MAME"
  homepage "https://mameosx.sourceforge.io/"

  app "MAME OS X.app"
end
