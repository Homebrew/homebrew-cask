cask 'openttd' do
  version '1.9.3'
  sha256 '59dae25ecc8e4b7a7ed46319abe74df391f730cbae91b16f24f14b2f50be2db3'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
