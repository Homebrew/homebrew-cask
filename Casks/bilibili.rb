cask :v1 => 'bilibili' do
  version '1.1'
  sha256 'd1f7bfec4c3ebb7b75252b27a98125be9be57c6dd2780ec3e2af2686fb61034b'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
