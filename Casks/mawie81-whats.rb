cask 'mawie81-whats' do
  version '1.8.0'
  sha256 '9f68154a382dc4306b440a254662a3efd65b9e4bbd8cfbc76b625e70e9afcbc2'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-#{version}.dmg"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          checkpoint: '45370175f2ba07f9a035cee526dabc9960c1c9e00b23586302fb62494084a113'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'

  app 'WhatsDesktop.app'
end
