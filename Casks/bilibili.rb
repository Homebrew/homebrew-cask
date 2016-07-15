cask 'bilibili' do
  version '2.43'
  sha256 '8ec04f681c3b7627de5a2ed69aff4d0a5c09dc42cca85259a2af4f4f045b983e'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '0b17b46b2d88ad92494b6bd73aa1f8f9af955cb58e9363323b92c92093d2a179'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
