cask 'fastonosql' do
  version '1.20.4'
  sha256 '12da3ae829defbfc5f104404ef56ec81d82c323e7b4c5347672c5cd83be67965'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
