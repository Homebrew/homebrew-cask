cask 'codeexpander' do
  version '3.3.3'
  sha256 'b9175f79547f212580712853e9320c159a4eef9fa61fda42a2208de0a3c11a5c'

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  appcast 'https://github.com/oncework/codeexpander/releases.atom',
          configuration: version.major_minor
  name 'CodeExpander'
  homepage 'https://github.com/oncework/codeexpander'

  app 'CodeExpander.app'
end
