cask 'responsively' do
  version '0.1.5'
  sha256 'a16a8310ce700a7c5594d1556eec5e30c9c816df7da92bd120c2c1dbebb5c6f0'

  # github.com/manojVivek/responsively-app/ was verified as official when first introduced to the cask
  url "https://github.com/manojVivek/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg"
  appcast 'https://github.com/manojVivek/responsively-app/releases.atom'
  name 'Responsively'
  homepage 'https://manojvivek.github.io/responsively-app/'

  app 'ResponsivelyApp.app'

  zap trash: [
               '~/Library/Application Support/ResponsivelyApp',
               '~/Library/Preferences/app.responsively.plist',
             ]
end
