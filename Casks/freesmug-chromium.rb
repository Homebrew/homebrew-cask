cask :v1 => 'freesmug-chromium' do
  version '45.0.2454.93'
  sha256 '4ba30d16a32b390fa055e5ffac190b3b0e70f9c338e7b3e3599638ea73e07193'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
