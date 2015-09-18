cask :v1 => 'jira-client' do
  version '3.6.2'
  sha256 '6add59e92511f6017fc8cc5d74e14ec78c31e3f8e29df7dc0b63acb5e1261fe6'

  url "http://d1.almworks.com/.files/jiraclient-#{version.gsub('.','_')}.dmg"
  name 'JIRA Client'
  homepage 'http://almworks.com/jiraclient'
  license :closed

  app 'JIRA Client.app'
end
