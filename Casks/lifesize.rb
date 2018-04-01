cask 'lifesize' do
  version '10.3.7-235'
  sha256 '7924c29dd00057f3417fb000b700d333a6cf36869ef2637b76e077ebfc813f7d'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  appcast 'https://cdn.lifesizecloud.com/OSX_Clients/Sparkle_Upgrades/LifesizeAppcast.xml',
          checkpoint: '632a8d4a035d6aa7184dd98f6448d3d09f5ce9da6acd155912e7cd0f4d60148a'
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
