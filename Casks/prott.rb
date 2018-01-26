cask 'prott' do
  version '1.1.7'
  sha256 '78c53145474d2c90768bdc56f41b689f7ca16b49879836c66b828c473fc3f2ae'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: 'df5cf0ce27ffae61e56cd3e1b8d504f87fe06c5ca20b65d61eb144f8ca49aad6'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
