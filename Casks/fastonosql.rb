cask 'fastonosql' do
  version '1.10.0'
  sha256 '38bf2c7b272040d8e25ec4cace4799c7a378bbf9e742192bff9d350e75d35292'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: 'efc5b58bbfdeed9f028c65295b17774b0e5cb99548c160c91fa6a1085c3f13f4'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
