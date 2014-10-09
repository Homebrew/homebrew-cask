class Stattransfer < Cask
  version '12'
  sha256 'eeb4f20b82722a2f9c5925b113ebce0e4bf0cd1c0cdde3a5215766c4a4c608f7'

  url "http://www.stattransfer.com/downloads/stdemo.dmg"
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg "st_installer_v#{version}.pkg"
  uninstall :pkgutil => 'com.circlesys.pkg'
end
