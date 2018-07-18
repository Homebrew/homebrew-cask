cask 'fluid' do
  version '2.0.1'
  sha256 '5bbec56a8d1221ee96fb64a13bb1e5c735565907a2de2c544588ca4c22e4a863'

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
