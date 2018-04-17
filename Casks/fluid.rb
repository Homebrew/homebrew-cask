cask 'fluid' do
  version '1.8.6'
  sha256 'bbfa09a48563d89d5a1113527cd0a353f590b0f6811f270f12909ecfad8a2655'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast "http://fluidapp.com/appcast/fluid#{version.major}.rss",
          checkpoint: 'db6db6a1f3cf7a8a4cb54b527e63a8b68108423292a10395bab3ddc4c290932f'
  name 'Fluid'
  homepage 'http://fluidapp.com/'

  app 'Fluid.app'

  zap trash: [
               '~/Library/Application Support/Fluid',
               '~/Library/Preferences/com.fluidapp.Fluid.plist',
             ]
end
