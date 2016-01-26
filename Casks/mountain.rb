cask 'mountain' do
  version '1.6.2'
  sha256 '474ec8db0f39a76ffb934ce0299205e5053498339908e77c6da0d2296fad2656'

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Mountain.app'
end
