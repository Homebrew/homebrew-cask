cask 'fluid' do
  version '2.1'
  sha256 '7b27dfcec1b74209496eb1150f38e464c95ae695dc9d95f1eab3d11925189e58'

  url "https://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast "https://fluidapp.com/appcast/fluid#{version.major}.rss"
  name 'Fluid'
  homepage 'https://fluidapp.com/'

  app 'Fluid.app'

  zap trash: [
               '~/Library/Application Support/Fluid',
               '~/Library/Preferences/com.fluidapp.Fluid.plist',
             ]
end
