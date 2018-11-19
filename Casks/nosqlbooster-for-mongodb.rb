cask 'nosqlbooster-for-mongodb' do
  version '5.0.0'
  sha256 'a22a2f7df03874ec0091ca4dafa8fda20b051237a981d456c2d4d40728ef36cf'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
