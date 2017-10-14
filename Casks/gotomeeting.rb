cask 'gotomeeting' do
  version '8.13.1.7713,ka338000000L6MHAA0'
  sha256 'ff7e03cb81884a9d788937a0fb00b3a42186aa55308845b11285e6de68602af4'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
