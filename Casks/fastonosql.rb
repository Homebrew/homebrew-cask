cask 'fastonosql' do
  version '1.17.5'
  sha256 '193943743e1779355ddf05cf4a06024c80e66b9fa25cde05999ce4a13777907a'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '86024caa72f71b24d4f45aa96a1ab8513715e6c6ed30e54222b02c9e7a5b353f'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
