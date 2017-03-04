cask 'hostbuddy' do
  version '1.0.3'
  sha256 '0f4c52c536978e0ea9e113edd68932dbd8fa65d4e83ef519ee24aa9dfc751d6c'

  # downloads-clickonideas.netdna-ssl.com/hostbuddy was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=22',
          checkpoint: '5374460f8275768f75986c50d0a7a207bb259638b54fd9f0bf7795611d084606'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end
