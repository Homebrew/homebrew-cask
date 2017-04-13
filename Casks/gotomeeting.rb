cask 'gotomeeting' do
  version :latest
  sha256 :no_check

  # support.citrixonline.com was verified as official when first introduced to the cask
  url 'https://support.citrixonline.com/servlet/fileField?entityId=ka3380000000FRYAA2&field=Content__Body__s'
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
