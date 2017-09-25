cask 'fastonosql' do
  version '1.8.1'
  sha256 'd24ddc9109c4d80d61570f7c176ad306895a04b1804052232ce0fef1d868efa8'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '04d359c4c787c831f7903f982bfac8261bb2ff308cc9ee22df4f9718054bea6c'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
