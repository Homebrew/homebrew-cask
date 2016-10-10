cask 'marker-import' do
  version '2.1.2.0'
  sha256 '82654c0b409af3ce609840e196c71989aa7a5c477488c9c99e773f01b8462917'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/markerimport?version=#{version.no_dots}"
  name 'Kollaborate Marker Import'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Marker Import.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.MarkerImport.plist'
end
