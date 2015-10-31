cask :v1 => 'bilibili' do
  version '2.16'
  sha256 'ee545dbfd027d206118955a8f079a8c8a161d77878083605ed38dc0076d32055'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '6ced15daa9b5ebe2f55e62c721063b8d0f9b45290e99f4776e1a109489c23e53'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
