cask 'ipvanish-vpn' do
  version '3.0.3_443'
  sha256 '359225571dd4e09cc8f52ee03fe9fffdb67c42a3f77f6e80a8577d7b91819fed'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: '426aa6c9a66f242ac85c1234570b37b2aeb9495ca9ae2fe8c8275a9eddd0a328'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
