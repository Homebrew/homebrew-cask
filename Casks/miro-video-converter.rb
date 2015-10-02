cask :v1 => 'miro-video-converter' do
  version :latest
  sha256 :no_check

  # osuosl.org is the official download host per the vendor homepage
  url 'http://ftp.osuosl.org/pub/pculture.org/mirovideoconverter/mac/Miro%20Video%20Converter.dmg'
  appcast 'http://miro-updates.participatoryculture.org/mvc-appcast-osx.xml'
  name 'Miro Video Converter'
  homepage 'http://www.mirovideoconverter.com/'
  license :gpl

  app 'Miro Video Converter.app'
end
