cask 'fotomagico' do
  version '5.6-22772'
  sha256 'aa4d5a33ea0759bdb0786dade4769f4ce84da81d196470e6a844724ff203351a'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
