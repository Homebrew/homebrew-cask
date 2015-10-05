cask :v1 => 'beardedspice' do
  version '1.1.2'
  sha256 '4696221ef921256d66bffc397b841f0a0c86f9500f8078becf6fcffd25c72a5a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
