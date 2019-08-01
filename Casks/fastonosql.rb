cask 'fastonosql' do
  version '2.5.0'
  sha256 '7385d2015237fd8b5d00b4dc7766e03f3fe0ff24821e924d93aeb4f71a03da56'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
