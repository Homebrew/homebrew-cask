cask 'fotomagico' do
  version '5.6.3-22849'
  sha256 '2bb5e222f7b955103fee342921a0474f12c509597f5517423c29bf1cb785dc8e'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
