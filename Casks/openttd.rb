cask :v1 => 'openttd' do
  version '1.5.2'
  sha256 'ce23adbca53510f720c6d911325d1fe21040a4cf2a95ec1d4b6f46b604d909f4'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
