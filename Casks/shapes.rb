cask 'shapes' do
  version '4.8.2'
  sha256 '4185d0f604ea4e271e198b4166667ad76c2cdd4092fd685b53a2209fb294a0ed'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: '273c28c2c6030abfc48ef63eba711fcf86f36db4d31567b299ad95d5d90d4602'
  name 'Shapes'
  homepage 'http://shapesapp.com'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
