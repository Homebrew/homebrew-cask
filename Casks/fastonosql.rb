cask 'fastonosql' do
  version '1.9.3'
  sha256 '7ece42999d3d98976061d5a57903eef0a97bc4069b3f4500eaa1096281d61003'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: 'a955fe4b8687a66d1c6636ce296dd434055abb1b750196ff164fe62425e3805a'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
