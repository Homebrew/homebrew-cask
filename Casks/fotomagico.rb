cask 'fotomagico' do
  version '5.5.2-22736'
  sha256 '9e15aabd479ad9a1ebc75ef7b55ca3f75e9a43b42c458d4c4b1c89c2f2f179ae'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/fotomagico',
          checkpoint: 'e6cce1179ccb2dfc1c9ea01f22175c54927fc9173fc6ef30be61bf819df94138'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
