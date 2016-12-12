cask 'quickradar' do
  version '1.1'
  sha256 'e05187416098f4312b94f34bc1c39a8a87ab96f9af0bc0d107283c032fbdb079'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          checkpoint: '12c9e616bac0289d4112227adf24ce9df99174ac3de7ac0781b01b45fc97ced6'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'

  app 'QuickRadar.app'
end
