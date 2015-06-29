cask :v1 => 'adapter' do
  version '2.1.4'
  sha256 '7f4db4e89fcf1d7be692c5b74b02f4c22206396a0febd51f42a46262ff9d4927'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  name 'Adapter'
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => '036eb7f0efa1ea980a1233e39f4342dcc2751e048acdfb967532864930ca84de'
  homepage 'https://www.macroplant.com/adapter/'
  license :gratis

  app 'Adapter.app'
end
