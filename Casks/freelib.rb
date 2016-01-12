cask 'freelib' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/freelibdesign/files/latest/download'
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'
  license :other

  app 'freeLib.app'
end
