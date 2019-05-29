cask 'lightning' do
  version '1.8.7'
  sha256 'e935a4a2109de23eb314b2f3992efbdf80ac4ce8916200484cbd86b828652852'

  url "https://fwdl.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  appcast 'https://www.filewave.com/day/index.php?option=com_content&view=article&id=226:lightning&catid=65&Itemid=347'
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/day/index.php?option=com_content&view=article&id=226:lightning&catid=65&Itemid=347'

  app 'Lightning.app'
end
