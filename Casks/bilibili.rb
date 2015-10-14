cask :v1 => 'bilibili' do
  version '2.14'
  sha256 '13cdf426bb3fe555cde886c7f840213c477c7a2b850428df50325367c7b71eee'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '48fc4cde8832c12247ff2a14f1a2317399884dccd8d10dfc3efdc5432bd5aa95'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
