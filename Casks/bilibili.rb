cask :v1 => 'bilibili' do
  version '1.97'
  sha256 'b6f098f34e0b2728efdd2e1fc0ddd6d55b97622a6c20bdb7c2dcb3e7fbfd0969'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => 'f98d695d3056a83fb92e476e6c177e1c287357a6697390fa8c8d09216ed9a0ba'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
