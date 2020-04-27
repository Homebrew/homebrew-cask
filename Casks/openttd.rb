cask 'openttd' do
  version '1.10.1'
  sha256 'f35cef401dc3872d0e7cfb34cef24cd62cdaca0998d514905f8f8389986e2316'

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast 'https://www.openttd.org/downloads/openttd-releases/latest.html'
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
