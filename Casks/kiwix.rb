cask 'kiwix' do
  version '2.0'
  sha256 '544c1f813ed1043844d75c75e10d41aec9812e5eea6bcb0c4f3a66d34e39b36a'

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  appcast 'https://www.kiwix.org/en/downloads/kiwix-reader/'
  name 'Kiwix'
  homepage 'https://www.kiwix.org/'

  app 'Kiwix.app'
end
