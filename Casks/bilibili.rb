cask 'bilibili' do
  version '2.45'
  sha256 '1e860cb75f140c0bd653f2e655bb0a6745973273a3eb02739a3c1b92610ad99f'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '9dae185a5a9d476af0aabb7c1d5f286c047107f1069267e7f3921a86c30093d3'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
