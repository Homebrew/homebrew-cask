cask 'responsively' do
  version '0.5.0'
  sha256 '8f979ccb3bbc712d9975ea0043b8aef59d427099be7a4a7a60946ef59bc50806'

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
