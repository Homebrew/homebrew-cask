cask 'fastonosql' do
  version '2.2.1'
  sha256 'fab3beeadfc6d40bffdc0667ca4a1d4e1671bc3ff4dade8626d1bbd21abd9390'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
