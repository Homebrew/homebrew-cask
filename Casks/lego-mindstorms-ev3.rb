cask "lego-mindstorms-ev3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "1.4.4"
  sha256 "cb912667968e08604e755278d0e2f2fc69556349938cb36b708c5ecd8c74af29"

  # le-www-live-s.legocdn.com/downloads/LMS-EV3/ was verified as official when first introduced to the cask
  url "https://le-www-live-s.legocdn.com/downloads/LMS-EV3/LMS-EV3_Full-setup_#{version}_en-us_osx.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.api.education.lego.com/v1/lms-ev3_en-us_osx"
  name "Lego Mindstorms EV3 Home Edition"
  homepage "https://www.lego.com/en-us/mindstorms"

  pkg "LEGO MINDSTORMS EV3 Home Edition.pkg"

  uninstall pkgutil: [
    "com.ni.pkg.lego.ev3.Eng.#{version}",
    "com.ni.pkg.lego.x3.#{version}.core",
    "com.ni.pkg.lego.x3.#{version}.update",
    "com.microsoft.silverlight.plugin",
    "com.ni.pkg.lego.ev3.Eng",
    "com.ni.pkg.lego.x3.core",
    "com.ni.pkg.lego.x3.update",
    "com.ni.pkg.legodriver",
    "com.xamarin.mono-MDK.pkg",
  ]

  zap pkgutil: [
    "com.ni.pkg.legodriver",
    "com.microsoft.silverlight.plugin",
    "com.ximian.mono-*",
  ]
end
