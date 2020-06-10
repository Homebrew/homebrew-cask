cask 'openttd' do
  version '1.10.2'
  sha256 'b655cd2109f9b1feb551694a7a4f25dc3f1cc13b04685e5d07cade4a35823179'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
