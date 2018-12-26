cask 'fastonosql' do
  version '1.25.1'
  sha256 'bbbfdfb580839c43d9cb646714726fce1e8ca2d91f15dfc02479c5b573541dc9'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
