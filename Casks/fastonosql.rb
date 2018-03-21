cask 'fastonosql' do
  version '1.16.3'
  sha256 '9b60d88fcd5fa860a7260bb1a7471ebead5fedb4fe6cfadd6248de8f6be98497'

  url "https://www.fastonosql.com/trial_users_downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '0aa5af5f704c186fe0c948108df9d2f4cb42421db7718301ced7e737da9c195c'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
