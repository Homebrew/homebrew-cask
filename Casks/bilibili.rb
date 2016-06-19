cask 'bilibili' do
  version '2.42'
  sha256 '30d63e10b1dc6f304f7037bb0fbeda3bee96227198d6b4d9a76124504408d6ae'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '95f1409514e926094f05af0e5e66187b3523070646a97aea59eb328d2d5b49e7'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  auto_updates true

  app 'Bilibili.app'
end
