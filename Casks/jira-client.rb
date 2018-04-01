cask 'jira-client' do
  version '3.8.4'
  sha256 '674cb80876659ec82999c14ba74596f878f18f544aa1bc8ce41f4d0ade8aab40'

  url "https://d1.almworks.com/.files/jiraclient-#{version.dots_to_underscores}.dmg"
  name 'JIRA Client'
  homepage 'http://almworks.com/jiraclient/overview.html'

  app 'JIRA Client.app'
end
