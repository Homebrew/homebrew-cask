cask :v1 => 'freesmug-chromium' do
  version '41.0.2272.89'
  sha256 '1f2d91c82461c5e00ac30b50f1b75fb5df2c41696643dca3d48cbe4df2e9a29d'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
