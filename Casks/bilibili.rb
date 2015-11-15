cask :v1 => 'bilibili' do
  version '2.18'
  sha256 '4827034c5c9ecea1f5cfbdb0ea7a02e8a5061925a3bb50e35f5822240b323617'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '6ced15daa9b5ebe2f55e62c721063b8d0f9b45290e99f4776e1a109489c23e53'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  app 'Bilibili.app'
end
