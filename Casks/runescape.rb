cask 'runescape' do
  version :latest
  sha256 :no_check

  url 'https://content.runescape.com/downloads/osx/RuneScape.dmg?crc=2901131314'
  name 'RuneScape'
  homepage 'https://www.runescape.com'
  license :gratis

  app 'RuneScape.app'
end
