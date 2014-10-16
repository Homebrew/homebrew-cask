class Chromium < Cask
  version '38.0.2125.101'
  sha256 '23e345fccc7863cb1d9e746487011a21c9e06ddd7d5e218360ef805a01f4b69d'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml',
          :sha256 => 'e7774d6af3604681a096ab22d2d3b63bcb6fa779532ae137ff05ab6e482c209a'
  homepage 'http://www.freesmug.org/chromium'
  license :oss

  app 'Chromium.app'
end
