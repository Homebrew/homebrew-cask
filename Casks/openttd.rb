cask 'openttd' do
  version '1.10.0'
  sha256 'f4999e8676568ad87f933ba868e97dbe92fd6e47d4d821a3d33775b5d1c8dd39'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
