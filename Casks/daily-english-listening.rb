cask 'daily-english-listening' do
  version '9.1.6'
  sha256 '26bd4fdd452577f1a17d972cd763d6dbc72e16af40800ed0e29f909ef1f0c5fc'

  # static.frdic.com/pkg/ting_en/ was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/ting_en/ting_en.dmg'
  appcast 'https://static.frdic.com/pkg/ting_en/latest-mac.yml'
  name 'Daily English Listening'
  name '每日英语听力'
  homepage 'https://www.eudic.net/v4/en/app/ting'

  auto_updates true

  app '每日英语听力.app'
end
