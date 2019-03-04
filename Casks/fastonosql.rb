cask 'fastonosql' do
  version '2.0.0'
  sha256 '21d90d54259a831b1c4321ca18ce5b82daa2031b4267a32e3081cac0dd1e815b'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
