cask 'fotomagico' do
  version '5.6.2-22801'
  sha256 '078309ddf13c12c65148f098b523c567e7f7a7e50c36201ba843736d7f416d8d'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
