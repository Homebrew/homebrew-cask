cask 'fastonosql' do
  version '1.25.0'
  sha256 'e61e25c9bdd0b25c4824db327677fa403d8cf1df3be7518014d3b91efa1d4253'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
