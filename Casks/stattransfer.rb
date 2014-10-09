class Stattransfer < Cask
  version '12'
  sha256 :no_check

  url "http://www.stattransfer.com/downloads/stdemo.dmg"
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg "st_installer_v#{version}.pkg"
  uninstall :pkgutil => 'com.circlesys.pkg',
end
