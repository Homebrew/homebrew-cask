cask 'miro-video-converter' do
  version :latest
  sha256 :no_check

  # osuosl.org is the official download host per the vendor homepage
  url 'http://ftp.osuosl.org/pub/pculture.org/mirovideoconverter/mac/Miro%20Video%20Converter.dmg'
  appcast 'http://miro-updates.participatoryculture.org/mvc-appcast-osx.xml',
          :sha256 => '78bc723d1c245f665036a24773c4ef2bbf8138a1c929720d9c3ff3c6cbcaeb5b'
  name 'Miro Video Converter'
  homepage 'http://www.mirovideoconverter.com/'
  license :gpl

  app 'Miro Video Converter.app'
end
