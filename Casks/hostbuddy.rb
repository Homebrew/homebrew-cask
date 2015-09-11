cask :v1 => 'hostbuddy' do
  version '1.0.3'
  sha256 '0f4c52c536978e0ea9e113edd68932dbd8fa65d4e83ef519ee24aa9dfc751d6c'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=22'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'
  license :commercial

  app 'Hostbuddy.app'
end
