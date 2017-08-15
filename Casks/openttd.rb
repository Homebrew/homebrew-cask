cask 'openttd' do
  version '1.7.1'
  sha256 '6f2b4ff490b32e2e3d1519c0477cc90620f261f623dc52944b8a43a109cb8c23'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'https://www.openttd.org/'

  app 'OpenTTD.app'
end
