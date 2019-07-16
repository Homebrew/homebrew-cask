cask 'katalon-studio' do
  version '6.2.1'
  sha256 '80bcbcd54a9938aec9748fc2b85606a18bba64645ab80af909f73949fdfe8a57'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
