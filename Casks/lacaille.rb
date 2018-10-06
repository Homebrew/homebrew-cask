cask 'lacaille' do
  version '2.3'
  sha256 'd5246e4ec20d7cec913c304f7999378713ffe090e55127e5062ca6c5ee18d17b'

  url "https://lacaille.jpn.org/Lacaille_#{version}.dmg"
  appcast 'https://lacaille.jpn.org'
  name 'Lacaille'
  homepage 'https://lacaille.jpn.org/'

  app 'Lacaille.app'

  uninstall login_item: 'Lacaille'

  zap trash: '~/Library/Preferences/org.jpn.lacaille.Lacaille.plist'
end
