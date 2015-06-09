cask :v1 => 'bilibili' do
  version '1.94'
  sha256 '8cdc96f064d9954966b2e317109b1ba2e1d8146700743280df99cfdccd86e550'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '19850c3907fd444febfb1370107ec539435369082177eaf42b13b980b19891b1'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
