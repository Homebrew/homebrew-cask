cask 'fastonosql' do
  version '1.27.2'
  sha256 '678db3b6467fdd31b501d25df06115a3dd61fb7fdb1e7aac64cfc5647daffe07'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
