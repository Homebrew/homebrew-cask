cask 'fastonosql' do
  version '1.9.2'
  sha256 '54010766df62d596e904c57ae9e8543d841243532ea1c09528a62285a225f4bf'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '1a27b6cd3a616007e28b3951c28d545e2882da288cde661c10d7ed2e9b326583'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
