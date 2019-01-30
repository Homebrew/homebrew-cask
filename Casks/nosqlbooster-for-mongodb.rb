cask 'nosqlbooster-for-mongodb' do
  version '5.1.0'
  sha256 '226133e1acf9c7fc5c09bf3978f9b0642d0a5382a2af35a22c2df2524cf7271f'

  url "https://nosqlbooster.com/s3/download/releasesv#{version.major}/nosqlbooster4mongo-#{version}.dmg"
  name 'NoSQLBooster for MongoDB'
  homepage 'https://nosqlbooster.com/'

  app 'NoSQLBooster for MongoDB.app'
end
