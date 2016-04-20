cask 'freesmug-chromium' do
  version '50.0.2661.75'
  sha256 '60d3bca36b99b8763bc644c083246a53139a3eab6ee317abb96e95b0915dbe82'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '314927459c3ae7b3522685f8963a58f626dc87259f2850047a3cf1683b9f3867'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
