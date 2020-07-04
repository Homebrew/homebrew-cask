cask 'codeexpander' do
  version '3.5.0'
  sha256 '835032d575715f57f1949156d2a7a441165ae17c398c45f30d6d58179faa3f02'

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  appcast 'https://github.com/oncework/codeexpander/releases.atom',
          must_contain: version.major_minor
  name 'CodeExpander'
  homepage 'https://github.com/oncework/codeexpander'

  app 'CodeExpander.app'
end
