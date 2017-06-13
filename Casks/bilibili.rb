cask 'bilibili' do
  version '2.52'
  sha256 'ba1d37b249201bdf3b839d11c3a0def86df42ca71dfc28631ecee269ee1284c7'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '51ac10a613683a37d4d6de604e58904a7b750d3ba1b6b341c112256680bf29d3'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
