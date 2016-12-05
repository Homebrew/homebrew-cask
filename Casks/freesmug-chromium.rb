cask 'freesmug-chromium' do
  version '55.0.2883.75'
  sha256 '0569adb9abcff90e064348ec547ab904c09cbcbde2f917b7f8adca7256c52a20'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'bce6c02f3c3fa08b3c6298512dd0cdc426f933b880d4789d32460ebe5aa67e17'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
