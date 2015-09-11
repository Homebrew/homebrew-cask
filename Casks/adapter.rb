cask :v1 => 'adapter' do
  version '2.1.5'
  sha256 '4daf1ce7ecabb4e2f8b5c3f2c04ff1d8ebee4e5b058acc6d8b0fe5c238dd73eb'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  name 'Adapter'
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => '036eb7f0efa1ea980a1233e39f4342dcc2751e048acdfb967532864930ca84de'
  homepage 'https://www.macroplant.com/adapter/'
  license :gratis

  depends_on :macos => '>= :snow_leopard'

  app 'Adapter.app'
end
