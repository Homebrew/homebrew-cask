cask 'rhodes-kite' do
  version '1.9.4'
  sha256 'e88912172dd9e501775c480bb93c773bb48e942044bccd9a57be38a96124295b'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
