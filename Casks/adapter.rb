cask 'adapter' do
  version '2.1.6'
  sha256 'ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          checkpoint: '17c8a441ce835c97f66dbd51dcbad221699360e42808091682ebfec5aed14edc'
  name 'Adapter'
  homepage 'https://www.macroplant.com/adapter/'

  depends_on macos: '>= :snow_leopard'

  app 'Adapter.app'
end
