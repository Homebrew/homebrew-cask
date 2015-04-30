cask :v1 => 'pphelper' do
  version :latest
  sha256 :no_check

  url 'http://ghost.25pp.com/soft/pp_mac.dmg'
  name 'pp助手'
  name 'pphelper'
  homepage 'http://pro.25pp.com/pp_mac_ios'
  license :gratis

  app 'pp助手.app'
end
