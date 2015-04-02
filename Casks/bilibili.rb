cask :v1 => 'bilibili' do
  version '1.0'
  sha256 'db898a7ffc88f9e9e4598db1b92d7985b47dde1c01848c797a8cada8ba03e3df'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
