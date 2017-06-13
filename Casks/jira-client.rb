cask 'jira-client' do
  version '3.8.3'
  sha256 '8de427e61fdde8d6c2e3bfe59d7d8dee19fbb6690d9b2b494055eb9ecf27ffcb'

  url "https://d1.almworks.com/.files/jiraclient-#{version.dots_to_underscores}.dmg"
  name 'JIRA Client'
  homepage 'http://almworks.com/jiraclient/overview.html'

  app 'JIRA Client.app'
end
