cask 'fastonosql' do
  version '1.9.1'
  sha256 '2754220bf38a8891f82029176b81c4a33c7c61126a800c61123110eb86985f2a'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: 'b2db1cebdb5ab9665fa41451eae277577d8af3dc828a0b00b7c99dae9903b623'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
