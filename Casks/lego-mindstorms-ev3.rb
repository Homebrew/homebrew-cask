cask 'lego-mindstorms-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.3.0'
  sha256 '498a80affcb726235bcb8df4e90267ebdd7550e6436ce2570fd2ca20ff3ce898'

  # le-www-live-s.legocdn.com/downloads was verified as official when first introduced to the cask
  url 'https://le-www-live-s.legocdn.com/downloads/LMS-EV3/LMS-EV3_Full-setup_1.3.0_de-de_osx.dmg'
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
