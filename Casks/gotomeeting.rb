cask 'gotomeeting' do
  version '8.15.0.7759,ka338000000L6agAAC'
  sha256 '717dbc41e4ef0322ce3e98bf49ec784a0673fcdb3414ca42a0164b226c518e23'

  # support.citrixonline.com was verified as official when first introduced to the cask
  url "https://support.citrixonline.com/servlet/fileField?entityId=#{version.after_comma}&field=Content__Body__s"
  name 'GoToMeeting'
  homepage 'https://www.gotomeeting.com/'

  app 'GoToMeeting.app'
end
