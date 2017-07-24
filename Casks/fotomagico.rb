cask 'fotomagico' do
  version '5.4.3-22666'
  sha256 '27666b42b4cc1a4fd2ce01381610a94a35e304f6c400b43f764ecc6c5355e00e'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect/histories/fotomagico',
          checkpoint: '9727c0a09a7f2ce884677cdd74963cb201899f2f552b1d85ea6a5ec25e2faea7'
  name 'FotoMagico'
  homepage 'https://www.boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
