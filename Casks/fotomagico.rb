cask 'fotomagico' do
  version '5.5.3-22746'
  sha256 '328adfcfd6185506568ac80f6e73960c8ca3d7ae881e7069e9dfa83b340ca11c'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
