cask 'marker-import' do
  version '2.1.3.0'
  sha256 '4f12503114d0bd0e03169757ba887b44590c84c61fc423566232791c6fcd2a33'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/markerimport?version=#{version.no_dots}"
  name 'Kollaborate Marker Import'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Marker Import.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.MarkerImport.plist'
end
