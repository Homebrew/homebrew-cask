cask 'altserver' do
  version :latest
  sha256 :no_check

  # f000.backblazeb2.com/file was verified as official when first introduced to the cask
  url 'https://f000.backblazeb2.com/file/altstore/altserver.dmg'
  name 'AltServer'
  homepage 'https://altstore.io/'

  depends_on macos: '>= :mojave'

  app 'AltServer.app'
end
