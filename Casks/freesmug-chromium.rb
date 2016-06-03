cask 'freesmug-chromium' do
  version '51.0.2704.79'
  sha256 '18943e724bce5c0fdbbc05243d5eb5669adf183b637db5a4d0a0afd8710f4e9a'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '8184708f8c1715f3a97d7ed910eab1bea6c679ec76e87b6f1916cc590cdcfdbb'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
