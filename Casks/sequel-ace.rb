cask 'sequel-ace' do
  version '2.1.4'
  sha256 '5c30a7891968ebe19a6c5c9080bf083aea86638d77005bebc4039659be79ce25'

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
