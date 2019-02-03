cask 'gitnote' do
  version '3.0.1'
  sha256 '828a2ea51842633262a5a6d26cbf824d4a002b3ea17d295db231797de96574d0'

  # github.com/zhaopengme/gitnote was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast 'https://github.com/zhaopengme/gitnote/releases.atom'
  name 'gitnote'
  homepage 'https://gitnoteapp.com/'

  app 'GitNote.app'
end
