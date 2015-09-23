cask :v1 => 'freesmug-chromium' do
  version '45.0.2454.99'
  sha256 '7446cfa92f15653de9f378460f71bab64970d1d4556273a9317e06eb1ce5531b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
