cask 'lego-mindstorms-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.2.1'
  sha256 '9d9aa01a6e83be37b6c99bce48758320cc9e9b186861d73ef660456c0d3293ab'

  # esd.lego.com.edgesuite.net/digitaldelivery/mindstorms was verified as official when first introduced to the cask
  url 'http://esd.lego.com.edgesuite.net/digitaldelivery/mindstorms/6ecda7c2-1189-4816-b2dd-440e22d65814/public/LMS-EV3-OSX-ENUS-01-02-01-full-setup.dmg'
  name 'Lego Mindstorms EV3 Home Edition'
  homepage 'https://www.lego.com/en-us/mindstorms'

  pkg 'LEGO MINDSTORMS EV3 Home Edition.pkg'

  uninstall pkgutil: [
                       "com.ni.pkg.lego.ev3.Eng.#{version}",
                       "com.ni.pkg.lego.x3.#{version}.core",
                       "com.ni.pkg.lego.x3.#{version}.update",
                     ]

  zap pkgutil: 'com.ni.pkg.legodriver'
end
