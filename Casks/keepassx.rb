cask :v1 => 'keepassx' do
  version '0.4.3'
  sha256 '15ce2e950ab78ccb6956de985c1fcbf11d27df6a58ab7bf19e106f0a1dc2fedd'

  url "https://www.keepassx.org/releases/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'http://www.keepassx.org'
  license :gpl

  app 'KeePassX.app'

  zap :delete => '~/.keepassx'

  caveats "Use 'keepassx2' instead of 'keepassx' to install KeePassX 2 alpha version."
end
