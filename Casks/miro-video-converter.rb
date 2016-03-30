cask 'miro-video-converter' do
  version '3.0'
  sha256 '32f5b7fdfc8eb0892b76b33ed2ec92bc580b62b0e713cd300ee0e7a5de220ccb'

  # osuosl.org is the official download host per the vendor homepage
  url 'http://ftp.osuosl.org/pub/pculture.org/mirovideoconverter/mac/Miro%20Video%20Converter.dmg'
  appcast 'http://miro-updates.participatoryculture.org/mvc-appcast-osx.xml',
          checkpoint: '78bc723d1c245f665036a24773c4ef2bbf8138a1c929720d9c3ff3c6cbcaeb5b'
  name 'Miro Video Converter'
  homepage 'http://www.mirovideoconverter.com/'
  license :gpl

  app 'Miro Video Converter.app'
end
