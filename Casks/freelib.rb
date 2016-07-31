cask 'freelib' do
  version '5.0'
  sha256 '08ff35674c56b813fb7394b50362b5b7907ebbdcf4de73bfac6ceffd4eea8d40'

  url "https://downloads.sourceforge.net/project/freelibdesign/#{version}/freeLib#{version}.dmg"
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'
  license :other

  app 'freeLib.app'
end
