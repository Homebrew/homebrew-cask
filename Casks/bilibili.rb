cask :v1 => 'bilibili' do
  version '1.98'
  sha256 '06649c8a2a6f2949da0a32e5539d5687ece0e647f572481e2d11bf7fcdef182b'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '607bcbe16cea248902c3a0fe9e549411cc7a6ea342d633bec9b8043f255d1e30'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
