cask 'openttd' do
  version '1.6.1'
  sha256 'b6faabfdaa9aba3f82537fd93ea128e45f735308e675c455657eb3fcb96265d7'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'https://openttd.org/'

  app 'OpenTTD.app'
end
