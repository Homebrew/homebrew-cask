cask :v1 => 'beardedspice' do
  version '1.0.8'
  sha256 '38078bc6c7e1a744643041f70a3380e43ef606ec614bd38f9cfa4a1895177b8a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
