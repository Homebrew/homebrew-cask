cask 'mongodb' do
  version '3.2.4-build.1'
  sha256 'baae264c3dd2620b399681d7e1819e766239fe21da87bda66e780ad092a474af'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '21f3d7df471a8d6ebafe2bb113cb0b35e730298dddbd077db581a4049cec612c'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
