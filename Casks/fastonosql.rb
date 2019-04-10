cask 'fastonosql' do
  version '2.2.2'
  sha256 'afc63a1926c74732bbab20b0a9cbefad9628935abb29539b295a4464b703026f'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
