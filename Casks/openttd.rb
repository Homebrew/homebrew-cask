cask 'openttd' do
  version '1.9.0'
  sha256 'e288d765589edc574555ea8793ad60aba41b3e19f313aa8b19c9d1ec1170e5e7'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
