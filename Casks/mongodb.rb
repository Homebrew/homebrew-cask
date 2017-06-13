cask 'mongodb' do
  version '3.4.3-build.1'
  sha256 'a8be6a015386b247b841f4a8a18b93ee8bd307b7b33d8432f56e0dead0742962'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '5a02dee4a4176129f578935a774af3373baf1ed5c25482e55c71a29e216b5d1c'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
