cask 'fastonosql' do
  version '1.24.1'
  sha256 'f8235b768525c352ce813799e75ba664faab653160a526bdef688e98fd77ef37'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
