cask 'fastonosql' do
  version '1.15.1'
  sha256 'be819f417c0175698273a5b5d995a860b0cd47a9e5fa05743a4fe141f3751c2c'

  url "https://www.fastonosql.com/trial_users_downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '835b2b356a2c8b02b46ec081fe77867ca4583f52342aec70ae9238390398b2f9'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
