cask :v1 => 'freesmug-chromium' do
  version '42.0.2311.152'
  sha256 '05799c4179a4cd0aba286b8d6598e5b57a4c6da89774478b985b15e6b74ae62b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
