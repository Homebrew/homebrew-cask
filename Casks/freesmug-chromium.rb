cask :v1 => 'freesmug-chromium' do
  version '45.0.2454.101'
  sha256 '663fd72f9089f601885959a3ca4db1ec992c210023ae34b6b1389a5ca1a8817b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
