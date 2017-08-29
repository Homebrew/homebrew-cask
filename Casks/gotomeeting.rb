cask 'gotomeeting' do
  version '8.9.1.7468,ka3380000004IfoAAE'
  sha256 'df6b6424834e6d2e0ab7b14a45d1834718d1b97a34f2fa1c900c28566559ea3d'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
