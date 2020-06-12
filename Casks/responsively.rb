cask 'responsively' do
  version '0.2.0'
  sha256 'cbd1e312c3607c34e154f3e01bc0e582f1601c5bd3886e9c414aa14bfa80d7a5'

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
