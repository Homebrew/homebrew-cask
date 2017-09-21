cask 'pixum-fotowereld' do
  version :latest
  sha256 :no_check

  # dls.photoprintit.com/api/getClient/12455-nl_BE/hps was verified as official when first introduced to the cask
  url 'https://dls.photoprintit.com/api/getClient/12455-nl_BE/hps/a303030303030303030303030303030303030303030303030353535323830364/mac'
  name 'Pixum Fotowereld'
  homepage 'https://nl.pixum.be/fotoboek'

  app 'Pixum Fotowereld.app'
end
