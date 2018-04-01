cask 'openttd' do
  version '1.7.2'
  sha256 '3d2d92a1870e68a3b88b069a940703292cda5b8cfd6c059d2d2f8755bc95e414'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
