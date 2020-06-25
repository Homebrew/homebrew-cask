cask 'sequel-ace' do
  version '2.0.2'
  sha256 'c92518b7ac0d3800071cb831f55b7de4ac8c04e9ba0a3be589287e10c83247ac'

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/#{version}/Sequel-Ace-#{version}-release.zip"
  appcast 'https://github.com/Sequel-Ace/Sequel-Ace/releases.atom'
  name 'Sequel Ace'
  homepage 'https://github.com/Sequel-Ace/Sequel-Ace'

  app 'Sequel Pro.app'

  zap trash: [
               '~/Library/Application Support/Sequel Ace',
               '~/Library/Caches/com.sequelpro.SequelAce',
               '~/Library/Preferences/com.sequelpro.SequelAce.plist',
               '~/Library/Saved Application State/com.sequelace.SequelAce.savedState',
             ]
end
