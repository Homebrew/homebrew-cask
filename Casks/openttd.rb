cask 'openttd' do
  version '1.9.1'
  sha256 'c2792f990e5c8775be86bc9cdfc7ddbff2e9234ae89028d5d2d7e5b1dd1e0cfc'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
