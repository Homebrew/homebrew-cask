cask 'bilibili' do
  version '2.52'
  sha256 'ba1d37b249201bdf3b839d11c3a0def86df42ca71dfc28631ecee269ee1284c7'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '8461ea5e003dc46cc903ec83284d9a2508c7e68bf38d01e2cf53d361619646a4'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
