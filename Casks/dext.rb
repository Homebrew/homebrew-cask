cask 'dext' do
  version '0.7.1'
  sha256 'f80441fe7daaa854104297b59a8fbef29a52c0886d3497896ebef8f82aff9a7d'

  url 'https://github.com/vutran/dext/releases/download/v0.7.1/Dext-darwin-x64.zip'
  appcast 'https://github.com/vutran/dext/releases.atom',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Dext'
  homepage 'https://github.com/vutran/dext'

  app 'Dext-darwin-x64/Dext.app'
end
