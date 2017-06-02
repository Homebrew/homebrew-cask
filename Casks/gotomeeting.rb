cask 'gotomeeting' do
  version '8.5.0.6956,ka338000000CjPXAA0'
  sha256 '5722fb63a00c320a20d071f8cb00d2fe93a1c4f73cbf8b80602021a8f8fb82de'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
