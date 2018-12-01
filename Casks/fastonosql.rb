cask 'fastonosql' do
  version '1.23.0'
  sha256 'aed516263d8a830cdfb9b8558d84ab3f52d7a7e89b3613ae50e91cb2912d539e'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
