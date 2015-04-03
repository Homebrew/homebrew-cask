cask :v1 => 'bilibili' do
  version '1.2'
  sha256 '1e98cc0069c487db2dccaa3a80ea3f1a1255cadd0268fed05a3621c6fe000e8a'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
