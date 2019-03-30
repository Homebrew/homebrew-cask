cask 'fastonosql' do
  version '2.1.1'
  sha256 '2d84cc8d1c312c44f8c0eaf90f53d12ff8e169209ec08f22c6f6f85e5bff69f6'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
