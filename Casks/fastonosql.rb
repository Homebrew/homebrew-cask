cask 'fastonosql' do
  version '2.4.0'
  sha256 'e10ff9703e960adbf9054957e11a5384d12e96d58146529532bc7caa8d6539b1'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
