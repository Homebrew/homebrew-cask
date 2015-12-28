cask 'openttd' do
  version '1.5.3'
  sha256 'c00610d1c480367c1aede611e97fa0886bec1d4b4318a87e4b80b7bd558830cb'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
