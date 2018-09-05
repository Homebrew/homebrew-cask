cask 'near-lock' do
  version '4.0.0'
  sha256 'cb2c849b9b941b609a6f2c8101d8fa6990bfce0714b790567b16af824cf10c12'

  url 'https://nearlock.me/downloads/nearlock.dmg'
  appcast 'https://nearlock.me/downloads/nearlock.xml'
  name 'Near Lock'
  homepage 'https://nearlock.me/'

  app 'Near Lock.app'
end
