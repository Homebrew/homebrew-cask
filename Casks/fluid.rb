cask 'fluid' do
  version '2.1.2'
  sha256 'cf58c480f631d2adc050b423e65776e253f52989ade9c1aaf8d77b8ced63a653'

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
