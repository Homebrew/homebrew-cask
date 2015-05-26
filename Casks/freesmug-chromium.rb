cask :v1 => 'freesmug-chromium' do
  version '43.0.2357.65'
  sha256 '71138d4633818d478a3994071e7f638ca31cfce3f190792a0721c906c0434484'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
