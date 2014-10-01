class Chromium < Cask
  version '37.0.2062.124'
  sha256 '34638a6b212e58a64120e6d7ea04487216310b12b516a5974a7d245de979cc3a'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
