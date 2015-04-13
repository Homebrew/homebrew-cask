cask :v1 => 'bilibili' do
  version '1.3'
  sha256 '8c7c6be8913dc707150e7a76c5b8fd7bcf23108aa3e0889f56c8a0054558cb37'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
