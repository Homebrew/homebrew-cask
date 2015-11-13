cask :v1 => 'freesmug-chromium' do
  version '46.0.2490.86'
  sha256 'a8cedaabd8ed70b769df8674b2f6997ce4697a3ed19920620761eac1779a87c4'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
