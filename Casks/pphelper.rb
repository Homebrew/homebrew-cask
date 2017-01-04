cask 'pphelper' do
  version '2.3.5'
  sha256 '229347cd7511fc24aaacdc4a059b20e98aeab8bf5dc35ff0f114de790fa5d764'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          checkpoint: '80140597244d3ad36a2c6cc2a85de0c57002b086283f04c6e5c2ec087020b97c'
  name 'pphelper'
  name 'pp助手'
  homepage 'http://pro.25pp.com/pp_mac_ios'

  app 'pp助手.app'
end
