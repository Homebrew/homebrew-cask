cask 'fotomagico' do
  version '5.5-22722'
  sha256 'd4cd426191a296244c034257b20de10a9baf4637a0b565025eb4f07adf328912'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect/histories/fotomagico',
          checkpoint: 'b5f89d69eec1142b892cf57fa154dd52dc1a4f62cde7f0289d40dbf124d07823'
  name 'FotoMagico'
  homepage 'https://boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
