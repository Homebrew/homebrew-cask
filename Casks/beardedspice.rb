cask :v1 => 'beardedspice' do
  version '1.2'
  sha256 '0498f7259dce39003221fe0de2080aac3b9d7306d2da6fff6c2bf04d340ae7c6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
