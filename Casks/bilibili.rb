cask :v1 => 'bilibili' do
  version '1.2'
  sha256 '58bb0c1bbb9c6cad945b077aaead9409941fdf13ad6d73dc61248e8697107e11'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
