cask 'festify' do
  version '1.4.2'
  sha256 '07f3ad04bede2d6a622f3652382193e7024f6d1f308b6f1208a036d13c15413a'

  url "http://getfestify.com/updates/mac/packages/#{version}/Festify.zip"
  appcast 'http://getfestify.com/updates/mac/festify.xml',
          :checkpoint => '791c98d30e5378526ffb9c8732a3ae462b0242f0cc2c919c87fd7cd40dc208a4'
  name 'Festify'
  homepage 'http://getfestify.com/'
  license :gratis

  app 'Festify.app'
end
