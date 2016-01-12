cask 'mountain' do
  version '1.6.2'
  sha256 '474ec8db0f39a76ffb934ce0299205e5053498339908e77c6da0d2296fad2656'

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          :sha256 => 'd91127cb5e8304d663292aed75e842f066bada8a849917e49df8110c76cae1cc'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Mountain.app'
end
