cask :v1 => 'bilibili' do
  version '2.13'
  sha256 '91b640374cd0f70c6b5da9bb542665d2b07d3f9149e2d8f22fb64958376cf024'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '48a288cedaf3f038ee0cb2117d6cf1f8d491bc41e59ed9b2766c26acef434176'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
