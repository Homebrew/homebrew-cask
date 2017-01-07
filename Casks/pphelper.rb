cask 'pphelper' do
  version '2.3.6'
  sha256 '707fbcf66f1991c35265266da04fdd8e2070b3122419caae2ac943614693ce34'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          checkpoint: '5b2b6a6128f0f2c253cbb2a6286a84db184bbc7cd5e527b6ef2c6c66b45b3c16'
  name 'pphelper'
  name 'pp助手'
  homepage 'http://pro.25pp.com/pp_mac_ios'

  app 'pp助手.app'
end
