cask 'freesmug-chromium' do
  version '67.0.3396.99'
  sha256 'e7876735a132b5a7ee2e942b526bd8b4f164f4f2dd576ec743d083d4b0a7d615'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
