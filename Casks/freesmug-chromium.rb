cask :v1 => 'freesmug-chromium' do
  version '42.0.2311.135'
  sha256 'c93e656fffa1ca016ab7ab2665d47444438672742132f4c0a9a61f0ebb6e4589'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
