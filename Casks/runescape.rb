cask 'runescape' do
  version :latest
  sha256 :no_check

  url 'https://www.runescape.com/downloads/runescape.dmg'
  name 'RuneScape'
  homepage 'https://www.runescape.com'
  license :gratis

  app 'RuneScape.app'
end
