cask 'fastonosql' do
  version '1.17.8'
  sha256 '1816be96a955b6b66884fb4a1b8a12c7772942024cc62801393b6ef7ad87d612'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
