cask 'proclaim' do
  version '2.12.0.0033'
  sha256 '204572be1c4c44b61b8c28d68700bbf330410286e49a3e4f4cf78f168ea6b96f'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
