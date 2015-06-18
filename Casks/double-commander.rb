cask :v1 => 'double-commander' do
  version '0.6.2-6025'
  sha256 '4c55f266d99d5610e95626b5319b4c3cd7a2ad6068fe9dfb4d9faf44d62cdf4b'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
