cask 'fluid' do
  version '2.1'
  sha256 'aa99e0218d8de548a292751f2e3145f299ddb7d6acf929b9d05b8d88db86e8e5'

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
