cask 'lego-mindstorms-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.1.1'
  sha256 '7331e72cfff30661606387c86e8153b2526547b588525385ac2ecd272d38194a'

  # edgesuite.net is the official download host per the vendor homepage
  url 'http://esd.lego.com.edgesuite.net/digitaldelivery/mindstorms/6ecda7c2-1189-4816-b2dd-440e22d65814/public/LMS-EV3-OSX-ENUS-01-01-01-full-setup.dmg'
  name 'Lego Mindstorms EV3 Home Edition'
  homepage 'http://www.lego.com/en-us/mindstorms'
  license :gratis

  pkg 'LEGO MINDSTORMS EV3 Home Edition.pkg'

  uninstall pkgutil: [
                       "com.ni.pkg.lego.ev3.Eng.#{version}",
                       "com.ni.pkg.lego.x3.#{version}.core",
                       "com.ni.pkg.lego.x3.#{version}.update",
                     ]

  zap pkgutil: 'com.ni.pkg.legodriver'
end
