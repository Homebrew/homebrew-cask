cask 'runescape' do
  version :latest
  sha256 :no_check

  url 'https://content.runescape.com/downloads/osx/RuneScape.dmg'
  name 'RuneScape'
  homepage 'http://www.runescape.com/'

  app 'RuneScape.app'
end
