cask 'fluid' do
  version '2.1'
  sha256 'befc2b345bb7ac0d44b2d209457079eb6ba7ed8eb9d595272a71584c0647bcb9'

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
