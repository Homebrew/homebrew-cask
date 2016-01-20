cask 'adapter' do
  version '2.1.5'
  sha256 '4daf1ce7ecabb4e2f8b5c3f2c04ff1d8ebee4e5b058acc6d8b0fe5c238dd73eb'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          checkpoint: '17c8a441ce835c97f66dbd51dcbad221699360e42808091682ebfec5aed14edc'
  name 'Adapter'
  homepage 'https://www.macroplant.com/adapter/'
  license :gratis

  depends_on macos: '>= :snow_leopard'

  app 'Adapter.app'
end
