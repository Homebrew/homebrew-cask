cask 'harvest' do
  version '2.0.1'
  sha256 '1addff925c7136a9e727af5f8d0dcc246ff37d7e71dbbac2e62baa630d676ad8'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '3ff20ca06678903097db234f916dff84419c76f954d64c4903f4210836974f6f'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
