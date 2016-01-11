cask 'mountain' do
  version '1.6.2'
  sha256 '474ec8db0f39a76ffb934ce0299205e5053498339908e77c6da0d2296fad2656'

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          :sha256 => 'c9f3e83a35d8096ca20b05e8a51e946c480818cf9e6331309a559d1f968022a0'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Mountain.app'
end
