cask 'lego-mindstorms-education-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.2.3'
  sha256 '1adf6caf723339d04b6dc563e4699ef9d95e070d66b448c67d66788a426d647f'

  # le-www-live-s.legocdn.com was verified as official when first introduced to the cask
  url 'https://le-www-live-s.legocdn.com/downloads/LME-EV3/LME-EV3_Full-setup_1.2.3_en-US_OSX.dmg'
  name 'Lego Mindstorms EV3 Education Edition'
  homepage 'https://www.lego.com/en-us/mindstorms'

  pkg 'LEGO MINDSTORMS Education EV3.pkg'

  uninstall pkgutil: [
                       "com.ni.pkg.lego.ev3.edu.#{version}.core",
                       "com.ni.pkg.lego.ev3.edu.#{version}.update",
                       "com.ni.pkg.lego.ev3.edu.Eng.#{version}",
                     ]

  zap pkgutil: 'com.ni.pkg.legodriver'
end
