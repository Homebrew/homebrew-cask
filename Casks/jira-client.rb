cask 'jira-client' do
  version '3.8.1'
  sha256 'c92bea86aa84c311ad202298a2232f15b8a268b5edb8f5e7450dc898a9221908'

  url "https://d1.almworks.com/.files/jiraclient-#{version.dots_to_underscores}.dmg"
  name 'JIRA Client'
  homepage 'https://almworks.com/jiraclient/overview.html'

  app 'JIRA Client.app'
end
