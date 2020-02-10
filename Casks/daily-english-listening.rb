cask 'daily-english-listening' do
  version '9.1.3'
  sha256 '500a6ab6b9139778b39583dc1a6a056a2c5c7e8ccf52fa887e6c42c1abeb8fca'

  # static.frdic.com/pkg/ting_en was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/ting_en/ting_en.dmg'
  appcast 'https://static.frdic.com/pkg/ting_en/latest-mac.yml'
  name 'Daily English Listening'
  name '每日英语听力'
  homepage 'https://www.eudic.net/v4/en/app/ting'

  auto_updates true

  app '每日英语听力.app'
end
