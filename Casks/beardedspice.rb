cask :v1 => 'beardedspice' do
  version '1.2.1'
  sha256 '1498c78cfa447155e308e06a369016e520d719772ed2b8e35a15dd6671d3fb70'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
