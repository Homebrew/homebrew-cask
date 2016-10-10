cask 'jira-client' do
  version '3.8.0'
  sha256 'c29f44b66c442583852adf658e5ca2ef5969b4a31a31551120c51530ce34012e'

  url "https://d1.almworks.com/.files/jiraclient-#{version.dots_to_underscores}.dmg"
  name 'JIRA Client'
  homepage 'https://almworks.com/jiraclient'

  app 'JIRA Client.app'
end
