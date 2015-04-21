cask :v1 => 'openttd' do
  version '1.5.0'
  sha256 'b8219e2b187e06334a80c15ed6f4c526daf68ceddfba507daf515dfaa599afad'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
