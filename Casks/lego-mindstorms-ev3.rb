cask 'lego-mindstorms-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.3.1'
  sha256 '15ea0a61d87aa5172a0fd1587c904470287fa750ad9d47a3abf53233872808b2'

  # le-www-live-s.legocdn.com/downloads/LMS-EV3 was verified as official when first introduced to the cask
  url "https://le-www-live-s.legocdn.com/downloads/LMS-EV3/LMS-EV3_Full-setup_#{version}_en-us_osx.dmg"
  name 'Lego Mindstorms EV3 Home Edition'
  homepage 'https://www.lego.com/en-us/mindstorms'

  pkg 'LEGO MINDSTORMS EV3 Home Edition.pkg'

  uninstall pkgutil: [
                       "com.ni.pkg.lego.ev3.Eng.#{version}",
                       "com.ni.pkg.lego.x3.#{version}.core",
                       "com.ni.pkg.lego.x3.#{version}.update",
                     ]

  zap pkgutil: [
                 'com.ni.pkg.legodriver',
                 'com.microsoft.silverlight.plugin',
                 'com.ximian.mono-*',
               ]
end
