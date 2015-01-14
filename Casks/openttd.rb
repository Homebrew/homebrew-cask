cask :v1 => 'openttd' do
  version '1.4.4'
  sha256 '0f8cd1f7015b1ebd8404f409e9d0f6185de4302dfe974c5adfc9738b0876fe67'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
