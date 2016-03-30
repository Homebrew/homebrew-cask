cask 'orelord-mongodb' do
  version '1.2'
  sha256 '9b7f6e8988a3169bf5f234ee10f93823a16750b3c1d4de524cd2e2f09452fd02'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/orelord/mongodbx-app/releases/download/v#{version}/MongoDBX-#{version}-2.4.9.zip"
  appcast 'https://github.com/orelord/mongodbx-app/releases.atom',
          checkpoint: '0abd71958d358346fba3d4115621aeabc753d12a80b0859f904ae3f636e22b9a'
  name 'MongoDB'
  homepage 'http://mongodbx-app.orelord.com/'
  license :oss

  app 'MongoDB.app'
end
