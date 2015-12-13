cask :v1 => 'freesmug-chromium' do
  version '47.0.2526.80'
  sha256 'dac9e5876e4a1e0d9d1751e963951de2fd9e706fdf0df2f0bd9e86b6f1ee8ed1'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
