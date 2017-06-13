cask 'cloak' do
  version '2.1.4'
  sha256 '4c94a9ca201b7f3bed62eb3e7b6f78c90015a2ad55097b89a0912f2e0167281e'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'da82afb1c06969791e41fbe9950041e8e51c1b9b61ed3a4177367847b9b6aa33'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
