cask 'daily-english-listening' do
  version '9.1.5'
  sha256 '88e83f9c7539927079f41d6ccb574a1295e43b136892b8af92add6de6cdca6f6'

  # static.frdic.com/pkg/ting_en was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/ting_en/ting_en.dmg'
  appcast 'https://static.frdic.com/pkg/ting_en/latest-mac.yml'
  name 'Daily English Listening'
  name '每日英语听力'
  homepage 'https://www.eudic.net/v4/en/app/ting'

  auto_updates true

  app '每日英语听力.app'
end
