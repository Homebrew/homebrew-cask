cask 'rhodes-kite' do
  version '1.9.2'
  sha256 '498259975bff1035111b789c1ad45e6ce210f834dbecb0d959027ee4ee185f4a'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '65b1867bfcfdb3970e2af4b58554843a2c6e65809e98494e88c39e9b477dc966'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
