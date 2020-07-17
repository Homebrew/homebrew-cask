cask 'responsively' do
  version '0.7.0'
  sha256 'aeb577865a6bbca17f8f03499ccec004e093e883e05054d9c492c9ab172a802c'

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
