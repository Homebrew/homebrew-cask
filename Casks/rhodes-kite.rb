cask 'rhodes-kite' do
  version '1.9.5'
  sha256 '41df64c8815e070eee0d2132012fe7b4aed29324e195362538a99c9edf817906'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  depends_on macos: '>= :sierra'

  app 'Kite.app'
end
