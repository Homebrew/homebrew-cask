cask 'pphelper' do
  version '2.3.4'
  sha256 'c308c7733bab38342229826b2d6e7cdfca425876bdd794732d1a05e9a0ddc410'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          :checkpoint => '8a1e09dec812f566ae2a15ee8f134a473191114952a7283a7c873a482653e855'
  name 'pphelper'
  name 'pp助手'
  homepage 'http://pro.25pp.com/pp_mac_ios'
  license :gratis

  app 'pp助手.app'
end
