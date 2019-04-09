cask 'fotomagico' do
  version '5.6.6-22897'
  sha256 'd26c22e85919352ba4bb730704f57a59124f54d55255661a73581eeb19937ff2'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=FotoMagico%205'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
