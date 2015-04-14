cask :v1 => 'freesmug-chromium' do
  version '41.0.2272.118'
  sha256 'd1f7ec69c116425b4ba944f5009574f8daef1217605f3de47db2f63ddf209557'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
