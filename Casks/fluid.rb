cask 'fluid' do
  version '2.0'
  sha256 '826ee0a6dd5f119f7b7c8579a8046debe0f0ee2d5c56b2465c44b9e4e5f5333a'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast "http://fluidapp.com/appcast/fluid#{version.major}.rss"
  name 'Fluid'
  homepage 'http://fluidapp.com/'

  app 'Fluid.app'

  zap trash: [
               '~/Library/Application Support/Fluid',
               '~/Library/Preferences/com.fluidapp.Fluid.plist',
             ]
end
