cask 'fastonosql' do
  version '2.5.1'
  sha256 '3ea82641bbd84e1d40cdb163d6bcdafab5282f060dfa0ef426eb61814e368b75'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
