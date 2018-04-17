cask 'openttd' do
  version '1.8.0'
  sha256 'fb5ac81ddec5a62efcf3cc44fde983e20a0ca61820ae6ee72b67323f45f5494e'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
