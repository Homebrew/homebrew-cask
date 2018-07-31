cask 'fastonosql' do
  version '1.17.7'
  sha256 '8ef78a764b9beaae94e46c4248afae59716edf0b9f3594994b5eb646bdd26c64'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
