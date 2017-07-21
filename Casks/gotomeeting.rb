cask 'gotomeeting' do
  version '8.8.0.7297,ka338000000CjmwAAC'
  sha256 '04b4ac223ee2b5ba60d0013cd9656a73ee8ff7dc2bc7cd90d1b656a5387880e9'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
