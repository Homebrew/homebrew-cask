cask 'sql-tabs' do
  version :latest
  sha256 :no_check

  url 'https://www.sqltabs.com/download/SQL%20Tabs.app.zip'
  name 'SQL Tabs'
  homepage 'https://www.sqltabs.com/'

  app 'SQL Tabs.app'

  zap trash: '~/.sqltabs'
end
