cask 'eloquent' do
  version '2.4.9'
  sha256 'c792bc3f4685f49052d105c89c9edc830ccc27f1bec9bbe3b841c976b0d0b249'

  url "https://launchpad.net/eloquent/trunk/#{version}/+download/Eloquent-#{version}.app.zip"
  appcast 'http://www.eloquent-bible-study.eu/Eloquent_L2_Appcast.xml',
          :checkpoint => '4318901483b75e6f9cbef00639272cf42904149ea3021294472800bc3e393b99'
  name 'Eloquent'
  homepage 'https://launchpad.net/eloquent'
  license :gratis

  app 'Eloquent.app'

  zap :delete => [
                   '~/Library/Application Support/Eloquent',
                   '~/Library/Caches/org.crosswire.Eloquent',
                   '~/Library/Logs/Eloquent.log',
                 ]
end
