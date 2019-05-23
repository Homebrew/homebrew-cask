cask 'sql-tabs' do
  version '1.0.0'
  sha256 'd3fa156de487b0f8956136d2999617ceec365cf989578340f523544fe0ccf81c'

  url 'https://github.com/sasha-alias/sqltabs/releases/download/v1.0.0/sqltabs.mac.dmg'
  name 'SQL Tabs'
  homepage 'https://www.sqltabs.com/'

  app 'SQL Tabs.app'

  zap trash: '~/.sqltabs'
end
