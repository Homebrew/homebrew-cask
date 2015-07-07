cask :v1 => 'bilibili' do
  version '1.99'
  sha256 '251799c370c654098599a9b0ed894fd5ce2a55ddb4a2529283f4c6ffa3867e5a'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '1513b3f83c9a4d55e8590383048a141b35de6c259744bde25944f59bc12811bf'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
