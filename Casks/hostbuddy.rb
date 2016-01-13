cask 'hostbuddy' do
  version '1.0.3'
  sha256 '0f4c52c536978e0ea9e113edd68932dbd8fa65d4e83ef519ee24aa9dfc751d6c'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=22',
          :checkpoint => '4f61df0c75c61b4f0eab8a67e558ad2f1addbe03e2d18bf288ff5f9f97f3b3db'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'
  license :commercial

  app 'Hostbuddy.app'
end
