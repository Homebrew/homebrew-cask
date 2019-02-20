cask 'mongodb-shell' do
  version '4.0.6'
  sha256 'bcc6c3da65dcdb62b09b044a7f578e0caada5ac1051f6ef41456bc517a542b6a'

  # downloads.mongodb.org/osx was verified as official when first introduced to the cask
  url "https://downloads.mongodb.org/osx/mongodb-shell-osx-ssl-x86_64-#{version}.tgz"
  appcast 'https://www.mongodb.com/download-center/community'
  name 'mongodb-shell'
  homepage 'https://docs.mongodb.com/manual/mongo/'

  conflicts_with cask: 'mongodb'

  binary "mongodb-osx-x86_64-#{version}/bin/mongo", target: 'mongo'
end
