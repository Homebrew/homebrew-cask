cask 'shapes' do
  version '4.8.8'
  sha256 'edcb61cbc8793880e7932bac37c20ddf92576594db8be7762399086fecd464ca'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: '5ec892167e089623a0a584e21b062ea739e0ad3520e9ada796bbac500bcfceed'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
