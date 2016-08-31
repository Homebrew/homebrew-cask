cask 'ramme' do
  version '2.0.0'
  sha256 'd5769f61184d4c09f2a6bc0bd8e00b1d51582fb1672fc1cd3f457527bfd91a9b'

  url "https://github.com/terkelg/ramme/releases/download/#{version}/Ramme-osx-#{version}.zip"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '47a0d1cd3f1aafe8d859b86e4930d0dfcf0e43452b1a6a31fc46a53d224714d9'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'
  license :mit

  app 'Ramme.app'
end
