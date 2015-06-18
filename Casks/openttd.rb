cask :v1 => 'openttd' do
  version '1.5.1'
  sha256 '344986e2f90c29d848d73a5d9f72f4ebbae665d8d3c7b6ed6e8f634414306779'

  url "http://binaries.openttd.org/releases/#{version}/openttd-#{version}-macosx-universal.zip"
  name 'OpenTTD'
  homepage 'http://openttd.org'
  license :gpl

  app 'OpenTTD.app'
end
