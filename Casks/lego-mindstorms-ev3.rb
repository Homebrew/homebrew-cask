cask 'lego-mindstorms-ev3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.3.0'
  sha256 'ce5e0b047c096886d1a74540b306e704d6249c0c7eb09c76f58389841abe3528'

  # le-www-live-s.legocdn.com/downloads/LMS-EV3 was verified as official when first introduced to the cask
  url "https://le-www-live-s.legocdn.com/downloads/LMS-EV3/LMS-EV3_Full-setup_#{version}_en-us_osx.dmg"
  name 'Lego Mindstorms EV3 Home Edition'
  homepage 'https://www.lego.com/en-us/mindstorms'

  pkg 'LEGO MINDSTORMS EV3 Home Edition.pkg'

  uninstall pkgutil: [
                       "com.ni.pkg.lego.ev3.Eng.#{version.major_minor}",
                       "com.ni.pkg.lego.x3.#{version.major_minor}.core",
                       "com.ni.pkg.lego.x3.#{version.major_minor}.update",
                     ]

  zap pkgutil: 'com.ni.pkg.legodriver'
end
