cask 'openttd' do
  version '1.9.2'
  sha256 '7ae51bb56120661147f1cbfcd2a840889ce338310057eed8dba8487a4bee510d'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
