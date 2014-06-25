class Minimalclock < Cask
  url 'http://www.ilovecolorz.net/download/MinimalClockScreenSaver.dmg'
  homepage 'http://ilovecolorz.net/minimalclock/'
  version 'latest'
  sha256 :no_check
  install ' .pkg'
  uninstall :pkgutil => 'com.ilovecolorz.minimalclockScreenSaver.*'
end
