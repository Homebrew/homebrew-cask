cask :v1 => 'freesmug-chromium' do
  version '40.0.2214.115'
  sha256 '00b40f4b903b2ea985e2d1dfd4f822fb23b6954b145c1ebe4cb8bde0d2a60260'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
