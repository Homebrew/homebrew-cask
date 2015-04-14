cask :v1 => 'beardedspice' do
  version '1.0.6'
  sha256 '8d7f5af100c76d04ded04b918a2db3037ffa9d0eacbe7902fd114fc17dfe35c3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/raw.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
