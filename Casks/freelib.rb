cask 'freelib' do
  version '4.9.1'
  sha256 'cf2ef318e19e7daaba7402f9a7a87d8a4aad6aefd9f374e3d40fb6d9a1ed19b6'

  url "http://downloads.sourceforge.net/sourceforge/freelibdesign/freeLi#{version}.dmg"
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'
  license :other

  app 'freeLib.app'
end
