cask :v1 => 'squire' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Squire_Mac_Builds/Squire.dmg'
  name 'Squire'
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastSquireMac.xml',
          :sha256 => '925c0096a3c8b8b9e6f73a9da81e4c291499a28f2661d56c9aa9c82f8cf9bc7c'
  homepage 'http://squireapp.com'
  license :commercial

  app 'Squire.app'
end
