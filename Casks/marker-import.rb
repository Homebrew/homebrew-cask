cask 'marker-import' do
  version '2.1.5.0'
  sha256 '4e38726e733bc0ad57bf38a4a44d4fe0d18ab665043f8a2baaa1d26391e4035e'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/markerimport?version=#{version.no_dots}"
  name 'Kollaborate Marker Import'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Marker Import.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.MarkerImport.plist'
end
