cask 'bilibili' do
  version '2.46'
  sha256 'dfc07c9f76e497aec74c153ac832d6ee879bc72044cdb8982c62fc2173de2184'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '1890efcced7351cf6531463bf7c87add4d2203c8d8d9b8ff153ce7c0e25d8139'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
