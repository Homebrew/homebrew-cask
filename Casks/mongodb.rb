cask 'mongodb' do
  version '3.2.10-build.1'
  sha256 '29b36cafb62e7ba6ac728fb98e8a264fd7a6494db4350975bdab4c38d332f87b'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '93e15dcc180c256dd01d3b4ba1d2d06ce5220bd5424ff9277e3c17f858e94330'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
