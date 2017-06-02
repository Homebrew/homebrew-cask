cask 'orelord-mongodb' do
  version '1.2'
  sha256 '9b7f6e8988a3169bf5f234ee10f93823a16750b3c1d4de524cd2e2f09452fd02'

  url "https://github.com/orelord/mongodbx-app/releases/download/v#{version}/MongoDBX-#{version}-2.4.9.zip"
  appcast 'https://github.com/orelord/mongodbx-app/releases.atom',
          checkpoint: 'f592ac021e820694d5dc1a8592b914eb4106cea8a25c300e3379998d98e7c0a0'
  name 'MongoDB'
  homepage 'https://github.com/orelord/mongodbx-app'

  app 'MongoDB.app'
end
