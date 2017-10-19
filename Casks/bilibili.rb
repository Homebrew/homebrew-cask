cask 'bilibili' do
  version '2.53'
  sha256 '0eac011e84dde2726526452ee575945e0b73db9c63e1d739489df85daa70a3d6'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'ace8b3261e55172bf2fecaa11a90c756fc939f94407f9b5df6352820d9b05ded'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
