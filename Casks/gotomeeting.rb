cask 'gotomeeting' do
  version '8.2.6634'
  sha256 'd8de55400362f9913017dc4a82373c1148adf4ff24c4b4f82b5d40dadbb4f8dc'

  # URL retrieved from https://support.citrixonline.com/en_US/meeting/all_files/G2M010014 via "Install DMG" link
  # support.citrixonline.com was verified as official when first introduced to the cask
  url 'https://support.citrixonline.com/servlet/fileField?entityId=ka3380000000FRYAA2&field=Content__Body__s'
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
