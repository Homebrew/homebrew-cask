cask 'jira-client' do
  version '3.7.0'
  sha256 'c4a4b45b260d59992c9e548618f6dfac1221a084d4564c81b5d2f0943d7b9739'

  url "https://d1.almworks.com/.files/jiraclient-#{version.gsub('.', '_')}.dmg"
  name 'JIRA Client'
  homepage 'http://almworks.com/jiraclient'
  license :closed

  app 'JIRA Client.app'
end
