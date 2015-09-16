cask :v1 => 'bilibili' do
  version '2.07'
  sha256 'f8220d46a39919e133633ef63b20f34cd2f2b805dce3ac1157bb47d7d55b99d4'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '25d5e1f08a54e9dea3618f70796ea2aced8640bd0d542efe83990dc6f2e8c384'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
