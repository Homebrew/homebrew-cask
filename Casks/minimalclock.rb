cask 'minimalclock' do
  version :latest
  sha256 :no_check

  url 'http://www.ilovecolorz.net/download/MinimalClockScreenSaver.dmg'
  name 'MinimalClock'
  homepage 'http://ilovecolorz.net/minimalclock/'
  license :gratis

  pkg ' .pkg'

  uninstall pkgutil: 'com.ilovecolorz.minimalclockScreenSaver.*'
end
