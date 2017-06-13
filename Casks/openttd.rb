cask 'openttd' do
  version '1.7.0'
  sha256 '208e2f876450fdac4caf4e5f5b16714cef3e9ac3047f465cdddbf8d03567dcb2'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
