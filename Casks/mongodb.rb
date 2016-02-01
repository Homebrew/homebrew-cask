cask 'mongodb' do
  version '3.2.1-build.1452779250'
  sha256 '09f9be6fb50dfd980d4dfd9bc60da463157accd67a82ba857d366e06508eed29'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  # github.com verified as official when first introduced to the cask
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '503ea07055eaccc3f5bdec48c64686c599ed5a43606fed448a03ded37af753e8'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
