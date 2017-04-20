cask 'rhodes-kite' do
  version '1.2'
  sha256 '7fa99815d9dbd2f33ebdb744af57bb9c4d4919fbdf11b65da47ff2ac55d83b66'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '71ec101dea8230abcfebcd3d1601648bce000d946775ad17867feadced923eae'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
