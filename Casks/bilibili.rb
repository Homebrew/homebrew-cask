cask 'bilibili' do
  version '2.39'
  sha256 '2fd11e2609c72455da0a5a82926a2fa3a22fc6167ee06c7d62fccb512ee85f02'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '4f418f0bbda322e0977bbe11ce88f17c9b7add8b1136e3c9c4668fa75c8059a1'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
