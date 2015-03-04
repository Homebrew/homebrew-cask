cask :v1 => 'freesmug-chromium' do
  version '41.0.2272.76'
  sha256 'ffd00ab16a49dde0ce18715ed40934843b434a5ab858330461bf4ac5064b3697'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
