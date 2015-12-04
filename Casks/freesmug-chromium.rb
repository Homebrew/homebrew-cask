cask :v1 => 'freesmug-chromium' do
  version '47.0.2526.73'
  sha256 '54c28af17955b9653585e9718a6968a06bc83c1f0d4278a417081ed22e480af7'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
