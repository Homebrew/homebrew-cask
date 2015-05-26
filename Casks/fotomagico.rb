cask :v1 => 'fotomagico' do
  version '4.5.5-19761'
  sha256 'eee16acc488004bbfbf5a7b743dc806862e94c6fa6486d9c7da2c730fca8df87'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso'
  name 'FotoMagico'
  homepage 'http://www.boinx.com/fotomagico/'
  license :commercial

  app 'FotoMagico.app'
end
