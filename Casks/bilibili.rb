cask :v1 => 'bilibili' do
  version '1.96'
  sha256 '81ec6b19a62481f8eb1b5f1b071c85f8fa2c6b7ef4d3c06025fe4a6a75e6e39c'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '79f7a3b8d7061a286abfb4dd0a2ffd59412deb034ae3737bb03134dc525b54e5'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
