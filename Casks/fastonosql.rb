cask 'fastonosql' do
  version '2.2.0'
  sha256 '40f133e3cdefe87fca485ec2e557a8374b3ac7b0d1945d5556b1d247d1ac7b6a'

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
