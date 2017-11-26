cask 'mongodb' do
  version '3.4.10-build.2'
  sha256 '4cb500267fa959abb185b288ff200291416547137ef752d349d57160795c87ad'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '45842de30fe7ff2992a5c6075d0de647577c16327397d948633b050b05cf5a2c'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap trash: [
               '~/Library/Caches/io.blimp.MongoDB',
               '~/Library/Preferences/io.blimp.MongoDB.plist',
             ]
end
