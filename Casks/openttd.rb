cask :v1 => 'openttd' do
  version '1.4.2'
  sha256 '4ea6b4fa1baf03edafa30c6475dc3f9f219239d04840bf5d4a3228bf3f6f33ff'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  homepage 'http://openttd.org'
  license :unknown

  app 'OpenTTD.app'
end
