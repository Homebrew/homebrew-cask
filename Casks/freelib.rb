cask 'freelib' do
  version '5.0'
  sha256 '08ff35674c56b813fb7394b50362b5b7907ebbdcf4de73bfac6ceffd4eea8d40'

  url "https://downloads.sourceforge.net/freelibdesign/#{version}/freeLib#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freelibdesign/rss',
          checkpoint: '4e5f7c0a1eed5d23ffb123b2932459172aeef85fdf467c0b8cf306da82677f0b'
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'

  app 'freeLib.app'
end
