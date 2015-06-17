cask :v1 => 'bilibili' do
  version '1.95'
  sha256 'c7266f216648c99f87fd433d24603c74d272a9fe391ff6579b2dfb631e113cd2'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => 'e5a331810fc3b0343cd7e9e291da8dadc00539f7d1f0fb3824e0909cf972ac34'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
