cask 'ipvanish-vpn' do
  version '3.0.1_440'
  sha256 '45e98d0a9125c528288646d7a7a92b273a5b0d7cd7c601cfbe629714b3273a6b'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: 'd3d3749ec17e3b9e10fcd756711d90fea3dd6975c0fc3e0d3daff7b5cf018702'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
