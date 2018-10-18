cask 'fluid' do
  version '2.1'
  sha256 'dea3e4c93f679f227594fa1cb53f5e78880e879fa796aa6396641dc4a1962195'

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
