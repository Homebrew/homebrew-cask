cask 'responsively' do
  version '0.8.0'
  sha256 '767b1789a0e8ad9d740817d37eeaa3c8c29426b5d3031cb9b1ab87012f728108'

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
