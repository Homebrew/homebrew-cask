cask 'gotomeeting' do
  version '8.5.0.6956'
  sha256 '5722fb63a00c320a20d071f8cb00d2fe93a1c4f73cbf8b80602021a8f8fb82de'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url 'https://support.citrixonline.com/servlet/fileField?retURL=%2Fapex%2FCPDownloadStarter%3FarticleLinkId%3DG2MD00250%26l%3Den_US%26product%3DMeeting&entityId=ka338000000CjPXAA0&field=Content__Body__s'
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
