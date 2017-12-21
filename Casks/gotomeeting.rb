cask 'gotomeeting' do
  version '8.16.0.7881,ka338000000L6kiAAC'
  sha256 'df26df961b04c339b14f2f3e1066546b77665ae31d61e0717c89ef35bea85540'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
