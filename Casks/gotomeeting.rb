cask 'gotomeeting' do
  version '8.4.6871'
  sha256 'd8de55400362f9913017dc4a82373c1148adf4ff24c4b4f82b5d40dadbb4f8dc'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url 'https://support.citrixonline.com/servlet/fileField?entityId=ka3380000000FRYAA2&field=Content__Body__s'
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
