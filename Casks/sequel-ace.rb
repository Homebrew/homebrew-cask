cask 'sequel-ace' do
  version '2.1.1'
  sha256 'e91aecfd0adb93bac695137f7861be76369e96d2cc4f6201eb141092603f8cd1'

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
