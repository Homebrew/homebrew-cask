cask 'fotomagico' do
  version '5.6.1-22775'
  sha256 '5b743c8ac5f41b59aba88ade398145883067688c8f0c9cf003a775b4290e5389'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
