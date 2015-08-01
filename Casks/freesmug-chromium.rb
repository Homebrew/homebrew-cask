cask :v1 => 'freesmug-chromium' do
  version '44.0.2403.125'
  sha256 '2872f6b928bdeb14908e40c1c340f5e216e1fe93016e7aff661217e9e1864f48'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
