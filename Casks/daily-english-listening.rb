cask 'daily-english-listening' do
  version '9.1.7'
  sha256 '44dc63240b4532f5012773de4b2404c496ca46269f7cc3bd64bb5621796f0897'

  # static.frdic.com/pkg/ting_en/ was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/ting_en/ting_en.dmg'
  appcast 'https://static.frdic.com/pkg/ting_en/latest-mac.yml'
  name 'Daily English Listening'
  name '每日英语听力'
  homepage 'https://www.eudic.net/v4/en/app/ting'

  auto_updates true

  app '每日英语听力.app'
end
