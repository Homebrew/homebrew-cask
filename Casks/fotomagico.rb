cask 'fotomagico' do
  version '5.6.4-22863'
  sha256 '8a81aba04669d52ef5c502d3e2d1a1680b622222d22d01cb0f7b81ed6a634159'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=FotoMagico%205'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
