cask 'pphelper' do
  version '2.3.4'
  sha256 'c308c7733bab38342229826b2d6e7cdfca425876bdd794732d1a05e9a0ddc410'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          :sha256 => '96e55462ba3629ff18e88c08d83fd5e202aec637eafed6856179ca214c1ddab4'
  name 'pp助手'
  name 'pphelper'
  homepage 'http://pro.25pp.com/pp_mac_ios'
  license :gratis

  app 'pp助手.app'
end
