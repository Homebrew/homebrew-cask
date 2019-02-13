cask 'fastonosql' do
  version '1.27.0'
  sha256 'e1edab2dbaec59522c97fe6750235aa7fcd886dc6b8bdd1c3606371029f7c7e5'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
