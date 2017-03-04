cask 'bilibili' do
  version '2.51'
  sha256 '7baf5fcfc4a467f03dbcd1165faae9fa339ece6972a4a38f37dd18f773c08268'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'e6eb3c6acdb1f48bd3281c8d1c9d4b03190dc4ad027a873996bf1127c766aad0'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
