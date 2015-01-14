cask :v1 => 'minimalclock' do
  version :latest
  sha256 :no_check

  url 'http://www.ilovecolorz.net/download/MinimalClockScreenSaver.dmg'
  homepage 'http://ilovecolorz.net/minimalclock/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg ' .pkg'

  uninstall :pkgutil => 'com.ilovecolorz.minimalclockScreenSaver.*'
end
