cask 'near-lock' do
  version '3.6'
  sha256 '8118ae08ef0dd414244dfc436abad5f3648bc36e18a7ace5d8587dde896b52b3'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '0d6cb95559b472c3e0b68f322310199311a74ebf915419607644b70e1a3d3917'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
