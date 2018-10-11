cask 'fastonosql' do
  version '1.19.3'
  sha256 '87f40e8d497195e71e1c8ee4634f87a4fdb051915ce61a6442758e232a45ea3a'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
