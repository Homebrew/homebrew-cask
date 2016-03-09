cask 'mountain' do
  version '1.6.2'
  sha256 '474ec8db0f39a76ffb934ce0299205e5053498339908e77c6da0d2296fad2656'

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: '3c848722a79d4cbf0e18f69ad041178446ad4471d276c573e73da6074f2406d3'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Mountain.app'
end
