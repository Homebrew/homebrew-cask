class Chromium < Cask
  version '37.0.2062.94'
  sha256 '72eef5d4281083bf2ea7eb848b81d145f3764c9ed0c9e207508640134172afea'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'

  link 'Chromium.app'
end
