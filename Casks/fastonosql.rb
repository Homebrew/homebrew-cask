cask 'fastonosql' do
  version '1.20.0'
  sha256 'f90252aa46ec3488136aecb22f0e29922e7fe75a5ade9fe75b56a7dd71204afb'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
