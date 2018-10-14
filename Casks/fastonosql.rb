cask 'fastonosql' do
  version '1.20.1'
  sha256 '93490e5068336cbbb96cf9fda4c48e0295c7d051779ba9da95d46d5df95392f9'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
