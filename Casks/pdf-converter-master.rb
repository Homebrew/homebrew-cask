cask 'pdf-converter-master' do
  version '6.2.1'
  sha256 '11110406915ad5a3c657e876adb000260d939cd3cffa91ef2b4476a84cd128d6'

  url "https://www.lightenpdf.com/upload/download/pdf-converter-master-#{version.no_dots}.dmg"
  appcast 'https://www.lightenpdf.com/pdf-converter-mac.html',
          configuration: version.no_dots
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
