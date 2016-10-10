cask 'fotomagico' do
  version '4.6.2-19829'
  sha256 '7b92c77092a8467b1bcc2584e1d98c8e39819da0c3c37eeba53ad6b3e666d27c'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version}.app.zip"
  name 'FotoMagico'
  homepage 'https://www.boinx.com/fotomagico/'

  app 'FotoMagico.app'
end
