cask 'osculator' do
  version '3.1.1-7-g064b670,8f8c7fe3-196c-44c2-8b93-e7507b749fdf'
  sha256 '960bc3536cbf27fd0307d8e08d5d855f0f796f14b2016df4e6835818ffac2817'

  # distribution.wildora.net was verified as official when first introduced to the cask
  url "https://distribution.wildora.net/products/osculator-v#{version.major}/revisions/#{version.after_comma}/osculator-#{version.before_comma}.dmg"
  appcast 'https://osculator.net/downloadthanks.php?stable',
          checkpoint: 'f05f25b4bdc6e493e45619036b4037e5fb2918a61803b7cfd27912b10dba8843'
  name 'OSCulator'
  homepage 'https://osculator.net/'

  app 'OSCulator ƒ/OSCulator.app'
end
