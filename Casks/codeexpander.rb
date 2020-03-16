cask 'codeexpander' do
  version '3.3.3'
  sha256 'b9175f79547f212580712853e9320c159a4eef9fa61fda42a2208de0a3c11a5c'

  url 'https://github.com/oncework/codeexpander/releases/download/3.3.x/CodeExpander-3.3.3.dmg'
  appcast 'https://github.com/oncework/codeexpander/releases.atom'
  name 'CodeExpander'
  homepage 'https://github.com/oncework/codeexpander'

  app 'CodeExpander.app'
end
