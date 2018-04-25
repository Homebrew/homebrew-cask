cask 'fastonosql' do
  version '1.17.4'
  sha256 '249e60716acf94c00d2049a14da411e5985ca2cfe7f3ed42462c45edee422684'

  url "https://www.fastonosql.com/downloads/macosx/fastonosql-#{version}-x86_64.dmg"
  appcast 'https://github.com/fastogt/fastonosql/releases.atom',
          checkpoint: '41f72610c3d64b529b092c1f587fbe2ef4eb79fdfbb1d03a72ff0ebc0663f621'
  name 'FastoNoSQL'
  homepage 'https://www.fastonosql.com/'

  app 'FastoNoSQL.app'
end
