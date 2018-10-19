cask 'fastonosql' do
  version '1.20.3'
  sha256 '2500dc25ae212f9c910f290bbc6c60e64417645fd4b9e0190ccefb7a74ec0783'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
