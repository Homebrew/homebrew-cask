cask 'fastonosql' do
  version '1.26.0'
  sha256 '771893c53c1a523daf9cc70f378075b49b854a5ced1cbc7d926a1cf9247dda17'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
