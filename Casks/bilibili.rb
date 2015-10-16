cask :v1 => 'bilibili' do
  version '2.14'
  sha256 '13cdf426bb3fe555cde886c7f840213c477c7a2b850428df50325367c7b71eee'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '57f3d58234c12ea9fbb733d8cba182e9511f5ab85c4fa72b76904492ee8e7154'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
