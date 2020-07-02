cask 'sequel-ace' do
  version '2.1.0'
  sha256 '4e01b23cedcbbd5c087a46654f5707c591f80360022e24b16ed7ae0b7e3f8340'

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
