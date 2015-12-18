cask 'retroshare' do
  version '0.6.0-RC2'
  sha256 '94d339613f61df4a1d74fd9e7e13ca40c4773af35ffd3ab721723d58a818dfdd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version}/RetroShare06-RC2.dmg.zip"
  appcast 'https://github.com/RetroShare/RetroShare/releases.atom'
  name 'RetroShare'
  homepage 'http://retroshare.sourceforge.net/'
  license :gpl

  container :nested => 'RetroShare06-RC2.dmg'

  app 'Retroshare.app'
end
