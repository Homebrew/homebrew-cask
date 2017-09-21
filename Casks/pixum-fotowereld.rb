cask 'pixum-fotowereld' do
  version :latest
  sha256 :no_check

  # https://nl.pixum.be/api/ was verified as official when first introduced to the cask
  url 'https://nl.pixum.be/api/getClient?url=108'
  name 'Pixum Fotowereld'
  homepage 'https://nl.pixum.be/fotoboek'

  app 'Pixum Fotowereld.app'
end
