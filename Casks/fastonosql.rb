cask 'fastonosql' do
  version '1.27.1'
  sha256 '514f966f9da9619909d226eb55f7dc2843afeccff71d4d85812b994817a51190'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
