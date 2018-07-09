cask 'fastonosql' do
  version '1.17.6'
  sha256 '83c5cb7c8903b0be609d330beba921da9131d5b1c6714fdd90ced33dd854eef3'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
