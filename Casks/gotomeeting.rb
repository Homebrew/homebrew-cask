cask 'gotomeeting' do
  version '8.9.0.7403,ka338000000Ck6BAAS'
  sha256 '025af6ffc0593f2e086f773398c27460ae607338baf989c16d1cfb76620387a6'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
