cask 'lacaille' do
  version '2.2.2'
  sha256 '3885a55a4fe1b80f9340271972372ab4b4fe234aad37c27f849e6d78fbd6fcb2'

  url "http://lacaille.jpn.org/Lacaille_#{version}.dmg"
  appcast 'http://lacaille.jpn.org',
          checkpoint: '9278d72ed9b5179467c1cf8888fc8d981ba32fc085bad32cf09119cf836c3ec4'
  name 'Lacaille'
  homepage 'http://lacaille.jpn.org/'

  app 'Lacaille.app'

  uninstall login_item: 'Lacaille'

  zap trash: '~/Library/Preferences/org.jpn.lacaille.Lacaille.plist'
end
