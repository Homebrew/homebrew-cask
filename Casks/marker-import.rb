cask 'marker-import' do
  version '2.1.8.0'
  sha256 'ca77d61b60a55fdd4253b351d2d7d7a8e36638428f22ca317d27797112732211'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "https://www.digitalrebellion.com/download/markerimport?version=#{version.no_dots}"
  name 'Kollaborate Marker Import'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Marker Import.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.MarkerImport.plist'
end
