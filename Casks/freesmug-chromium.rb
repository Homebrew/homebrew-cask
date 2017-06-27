cask 'freesmug-chromium' do
  version '59.0.3071.115'
  sha256 'bc1e6fa694a58939b3bd94d8b2ee5686443c8f8cd7eab27002a352c6d2ac10ba'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '33f57360db998ab207078bddc41bf74d41d39ec39546d6925ec381d7563bc364'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
