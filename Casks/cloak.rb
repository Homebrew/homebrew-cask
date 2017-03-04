cask 'cloak' do
  version '2.1.4'
  sha256 '4c94a9ca201b7f3bed62eb3e7b6f78c90015a2ad55097b89a0912f2e0167281e'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: '6bffb5f68b5c94ba9046894d21faa20fa97b995784f9d6a4d0a0d7b881e26a1f'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
