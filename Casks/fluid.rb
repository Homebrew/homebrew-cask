cask 'fluid' do
  version '2.0.2'
  sha256 'bcb77409f0453c3d6dadc5ee6d072a538f5c7f55ff2bc89eb709bef7c1356da8'

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
