cask 'flixster-video' do
  version '2.7.1.645'
  sha256 '545740a435d22e442c5edb1cb43d88859458960419ed2cd16894af0fba84ded9'

  # dtmmt9rxsy2no.cloudfront.net was verified as official when first introduced to the cask
  url 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterVideo.zip'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml'
  name 'Flixster Video'
  homepage 'https://www.flixstervideo.com/apps'

  app 'Flixster Video.app'
end
