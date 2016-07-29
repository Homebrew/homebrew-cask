cask 'runescape' do
  version :latest
  sha256 :no_check

  url 'https://content.runescape.com/downloads/osx/RuneScape.dmg'
  name 'RuneScape'
  homepage 'https://www.runescape.com'
  license :gratis

  app 'RuneScape.app'
end
