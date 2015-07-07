cask :v1 => 'freesmug-chromium' do
  version '43.0.2357.130'
  sha256 '530570afc135d3121f4df9f2edf4ffce3f3b817415694454ed7a9402b5dad387'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
