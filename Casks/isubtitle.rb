cask 'isubtitle' do
  version '3.1.1'
  sha256 '05acbe95fd72f449147ba0d1e298b9feba041a9adc9319d00938daf1c890e700'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: '2e497388a372c0a10cfc187264dcb8aee4a86d9888e40eea9257fb79d521204c'
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
