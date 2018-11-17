cask 'near-lock' do
  version '5.0.0'
  sha256 'b4e4a65d8a141f4ecd61d45a73eafbe51c9eb05e660acc9756a5b5b1b83a24b6'

  url 'https://nearlock.me/downloads/nearlock.dmg'
  appcast 'https://nearlock.me/downloads/nearlock.xml'
  name 'Near Lock'
  homepage 'https://nearlock.me/'

  app 'Near Lock.app'
end
