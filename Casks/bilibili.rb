cask 'bilibili' do
  version '2.51'
  sha256 '7baf5fcfc4a467f03dbcd1165faae9fa339ece6972a4a38f37dd18f773c08268'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'c0cbd681945ac2760929b24e6549f041df7fcd24960653c1bc602dfc04146fcd'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
