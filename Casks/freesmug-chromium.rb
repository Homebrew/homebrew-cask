cask 'freesmug-chromium' do
  version '76.0.3809.100'
  sha256 'f913379731930a4349326ec2520a0c6bb6575b0d013c0d62eb680c50771f360b'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
