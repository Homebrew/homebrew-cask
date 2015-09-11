cask :v1 => 'freesmug-chromium' do
  version '45.0.2454.85'
  sha256 '489f42d85e9a173dfe7b2c2e2c6ff94a85e34292034f196657f8c1cd7a61bd92'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
