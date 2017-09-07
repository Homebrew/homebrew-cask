cask 'aircall' do
  version '1.4.11'
  sha256 'eef8dd31b3b9c9a7fad88758474e7755b1715f5405382bfe705bf02572b5d295'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '4814444d1ab30b98414914c5c7b98c37b57ad7b66906b94efcd6b4d0e80cd234'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
