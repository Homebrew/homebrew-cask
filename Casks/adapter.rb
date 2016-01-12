cask 'adapter' do
  version '2.1.5'
  sha256 '4daf1ce7ecabb4e2f8b5c3f2c04ff1d8ebee4e5b058acc6d8b0fe5c238dd73eb'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => 'be587ca186a4b7a8312f7038f3913a70e1b1d647752620b20be00d7b4cd5d890'
  name 'Adapter'
  homepage 'https://www.macroplant.com/adapter/'
  license :gratis

  depends_on :macos => '>= :snow_leopard'

  app 'Adapter.app'
end
