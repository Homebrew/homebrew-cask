cask 'fastonosql' do
  version '2.0.1'
  sha256 '360e7ccafb4d1b4bb05db8c19dc0f466679f1e5defb34e899d414c8da66ec31f'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
