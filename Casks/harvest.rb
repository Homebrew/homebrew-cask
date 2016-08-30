cask 'harvest' do
  version '2.0.0'
  sha256 '57c806069dc3cc42522b07b65261a553e5ec725542ea803fedbba3512810b25d'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '91f5f75d61635f6b395b42d6b261c7eddcdb4bc6625dc10d1266f6cae2fe6165'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
