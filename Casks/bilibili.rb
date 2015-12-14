cask :v1 => 'bilibili' do
  version '2.21'
  sha256 '097cd67faf04b22a5ba78b6c060d5ba9fc94dacc64b7973771a86238a363c8ce'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '0a9c26966b571651aed9b8a2daa5f10364e500237348bb27bf498a7df422dc41'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
