cask :v1 => 'freesmug-chromium' do
  version '44.0.2403.130'
  sha256 '9f868646c680fccad9a967744e7cc6643008bdb7627a9faf4bb45f38d7f1367f'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
