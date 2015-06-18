cask :v1 => 'freesmug-chromium' do
  version '43.0.2357.81'
  sha256 'fc2c43f899d192d52ea84ae6940911094d6f670062b3c03e69499c689601c2fa'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
