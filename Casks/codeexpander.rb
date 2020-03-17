cask 'codeexpander' do
  version '3.3.5'
  sha256 'b72a019e8953942513d89b2586e10d4c5741980bd761b46fcb4b9cf4ddca3c26'

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  appcast 'https://github.com/oncework/codeexpander/releases.atom',
          configuration: version.major_minor
  name 'CodeExpander'
  homepage 'https://github.com/oncework/codeexpander'

  app 'CodeExpander.app'
end
