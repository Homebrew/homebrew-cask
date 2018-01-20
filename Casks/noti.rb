cask 'noti' do
  version '0.3'
  sha256 '3063d4889cd41c4c0411f1e27fbd80497a3c9e40bc437e6c436c918493a4385a'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://github.com/jariz/Noti/releases.atom',
          checkpoint: '085086d6b394f4a495ecfce21c0b9691a81939364409d9a163096a953a471bb3'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end
