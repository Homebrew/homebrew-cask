cask 'fotomagico' do
  version '5.3-22548'
  sha256 'f99311b87873a93e62a83e36f3426d327d3daa5b120534747bef75c4e78b10eb'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  name 'FotoMagico'
  homepage 'https://www.boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
