cask :v1 => 'bilibili' do
  version '2.08'
  sha256 'b9e19448f6e5340f899508fc218c7a08eeade960ea6af8fdb7ac28fb70fba3cb'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '48fc4cde8832c12247ff2a14f1a2317399884dccd8d10dfc3efdc5432bd5aa95'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
