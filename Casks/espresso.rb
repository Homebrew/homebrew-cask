cask 'espresso' do
  version '2.2.3'
  sha256 '5d6be08f97fb87cf4a1ba713c4ea7f9f09c7eb11658891725df171fe1cf73442'

  # amazonaws.com/macrabbit was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/macrabbit/downloads/Espresso%20#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '54f5a3da5544a66d475868f90c0a043170b684e4d3c5608ffbd29436b34d1f78'
  name 'Espresso'
  homepage 'https://macrabbit.com/espresso/'

  app 'Espresso.app'
end
