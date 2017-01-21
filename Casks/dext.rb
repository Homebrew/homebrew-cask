cask 'dext' do
  version '0.7.1'
  sha256 'f80441fe7daaa854104297b59a8fbef29a52c0886d3497896ebef8f82aff9a7d'

  url "https://github.com/vutran/dext/releases/download/v#{version}/Dext-darwin-x64.zip"
  appcast 'https://github.com/vutran/dext/releases.atom',
          checkpoint: '8759a1def2fbe2580dda40dd7a87eade01b96001d83e86476c9fa13fccfacd3c'
  name 'Dext'
  homepage 'https://github.com/vutran/dext'

  app 'Dext-darwin-x64/Dext.app'
end
