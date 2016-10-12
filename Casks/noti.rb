cask 'noti' do
  version '0.1.5'
  sha256 '6c81afbee1146dffc543af6502b193e55a5b241b5cdd996f43016dce03c8a428'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://github.com/jariz/Noti/releases.atom',
          checkpoint: 'c784b94965f932e1db3022eeccc17e0a75c99012db068ca30a9bc85ca8be3851'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end
