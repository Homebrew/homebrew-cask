cask 'nanostudio' do
  version '1.45'
  sha256 '70407ffc54bf5ed2e3c8ec8f1a980739077199a828b8b9d28a2bae04c298856a'

  url "http://downloads.blipinteractive2.co.uk/NanoStudio-#{version}.dmg.zip"
  name 'NanoStudio'
  homepage 'http://www.blipinteractive2.co.uk/'

  app 'NanoStudio.app'
  app 'NanoStudio-Phone.app'
  app 'NanoStudio-Tablet.app'
end
