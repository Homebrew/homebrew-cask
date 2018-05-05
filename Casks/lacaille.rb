cask 'lacaille' do
  version '2.3'
  sha256 'd5246e4ec20d7cec913c304f7999378713ffe090e55127e5062ca6c5ee18d17b'

  url "http://lacaille.jpn.org/Lacaille_#{version}.dmg"
  appcast 'http://lacaille.jpn.org',
          checkpoint: '9927f500f302dde5f1b0a1ca41aba87d130815cfb0dd60edad5bfd34aa7d3459'
  name 'Lacaille'
  homepage 'http://lacaille.jpn.org/'

  app 'Lacaille.app'

  uninstall login_item: 'Lacaille'

  zap trash: '~/Library/Preferences/org.jpn.lacaille.Lacaille.plist'
end
