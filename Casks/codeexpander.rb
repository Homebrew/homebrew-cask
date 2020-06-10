cask 'codeexpander' do
  version '3.3.6'
  sha256 '54bf88b5da08f75ec5b93677860f0a284984d83db5f92446e4937b4c56af9f07'

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  appcast 'https://github.com/oncework/codeexpander/releases.atom',
          configuration: version.major_minor
  name 'CodeExpander'
  homepage 'https://github.com/oncework/codeexpander'

  app 'CodeExpander.app'
end
