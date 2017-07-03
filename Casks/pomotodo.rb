cask 'pomotodo' do
  version '3.2.2,1493264068'
  sha256 '3c176306627bf20080681cef7d982eb5fcfd535666f79dcef2ddef7fb5fd66cd'

  # cdn.hackplan.com/theair was verified as official when first introduced to the cask
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast "https://air.pomotodo.com/v1/p/com.pomotodo.PomotodoMac#{version.major}/latest.xml",
          checkpoint: 'd901ecb9af3414888d4acec8f61eebe4cf4640e4ef298934ece09fe67ab0ce99'
  name 'Pomodoro'
  homepage 'https://pomotodo.com/'

  app 'Pomotodo.app'
end
