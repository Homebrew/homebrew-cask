class Chromium < Cask
  version '36.0.1985.143'
  sha256 'd1b4380ce3ab87ad2e414cfe8bdf7ea21779edeb711323a8969101d700209744'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'

  link 'Chromium.app'
end
