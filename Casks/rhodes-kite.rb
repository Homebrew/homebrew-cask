cask 'rhodes-kite' do
  version '1.4'
  sha256 'cafa6382ecdf38851c131348d3b38f40fe7409f739462c9a0f83e9f35164043e'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '6819bf21c465b53a29e47df24f81754d52085722807f002b7bf75b7e2c595407'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
