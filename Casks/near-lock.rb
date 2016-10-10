cask 'near-lock' do
  version '3.6.2'
  sha256 '75a6ef10f26ff536dacad3eb1b8e27443133e302e9d94818d12dcb9ab22ab1e2'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '5a7892312aa20f9057a8e868d748f61a35397854893a7b80f6dfc11922923958'
  name 'Near Lock'
  homepage 'http://nearlock.me/'

  app 'Near Lock.app'
end
