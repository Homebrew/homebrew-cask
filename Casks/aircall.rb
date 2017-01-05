cask 'aircall' do
  version '1.2.0'
  sha256 '6015be3707e4375a8b95bbefb7de7af1b58dea94caf3bab425904bd205e5e16b'

  url "http://electron.aircall.io/download/#{version}/osx"
  appcast 'http://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '60b4e66f1bae07cea0730393aa68711690cf7d10166555dca3fc48982fe2a570'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
