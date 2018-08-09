cask 'fastonosql' do
  version '1.17.9'
  sha256 '4df200937d890f3130f11bf0336df0438c5994acdc1022989e35cfe528498d4a'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
