class Chromium < Cask
  version '36.0.1985.125'
  sha256 '2a645ee42f9a9d2bb22c03fe90b6f9082ebb6a8351697b7112b060ed6b766339'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'

  link 'Chromium.app'
end
