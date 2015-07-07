cask :v1 => 'klystrack' do
  version '1.6.0-1270'
  sha256 '32121c17df528c780384d235f91da3bd0552ac3b20a4e3538e6627d8255ff30c'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/1190319/Klystrack_1.6.0-1270.dmg'
  name 'Klystrack'
  homepage 'https://kometbomb.github.io/klystrack/'
  license :mit

  app 'Klystrack.app'
end
