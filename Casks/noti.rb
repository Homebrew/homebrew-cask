cask 'noti' do
  version '0.1.5'
  sha256 '6c81afbee1146dffc543af6502b193e55a5b241b5cdd996f43016dce03c8a428'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://rawgit.com/jariz/Noti-appcast/master/appcast.xml',
          checkpoint: 'b2868e917e6b97a22e0d45de63b5d67dfe911b902cc8a4ee738b28012e9cce12'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end
