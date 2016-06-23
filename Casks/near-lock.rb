cask 'near-lock' do
  version '3.6'
  sha256 'd5f15c5da6e818ed467dead23a070ffd99af48d6265f5dbf3319ef6f336df530'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: 'e0ca65379137858b4f565a9abd40195cd834829143575e800465096bf86a6a7c'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
