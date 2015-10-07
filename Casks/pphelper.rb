cask :v1 => 'pphelper' do
  version :latest
  sha256 :no_check

  url 'http://ghost.25pp.com/soft/pp_mac.dmg'
  name 'pp助手'
  name 'pphelper'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          :sha256 => 'e6314c4ba7636e5521f5743cdbaf7fd31cef90ff954bdfdfd6185b6d50dc0a25'
  homepage 'http://pro.25pp.com/pp_mac_ios'
  license :gratis

  app 'pp助手.app'
end
