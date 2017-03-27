cask 'freedom' do
  version '1.4.6'
  sha256 'de857dbbcf3f1f65dc8a44380977ed7dc3a7da6bda1e5616f3555767b459384e'

  url 'https://cdn.freedom.to/installers/FreedomSetup.dmg'
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: 'd5b94d6d470c8ecc7f77bca718d6641ea5de9188fa4db354bad5fa700e1d7fd5'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
