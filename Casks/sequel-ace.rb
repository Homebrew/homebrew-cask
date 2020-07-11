cask 'sequel-ace' do
  version '2.1.2'
  sha256 '7fba67fb702db62e2d52c0d6e561b2d73bd8d02db89ce4c28a0b07c045eb7c57'

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/#{version}/Sequel-Ace-#{version}-release.zip"
  appcast 'https://github.com/Sequel-Ace/Sequel-Ace/releases.atom'
  name 'Sequel Ace'
  homepage 'https://github.com/Sequel-Ace/Sequel-Ace'

  app 'Sequel Ace.app'

  zap trash: [
               '~/Library/Application Support/Sequel Ace',
               '~/Library/Caches/com.sequelace.SequelAce',
               '~/Library/Preferences/com.sequelace.SequelAce.plist',
               '~/Library/Saved Application State/com.sequelace.SequelAce.savedState',
             ]
end
