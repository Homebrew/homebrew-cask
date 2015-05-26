cask :v1 => 'desmume' do
  version '0.9.11'
  sha256 'c3ff7024e0905f1c1da390d0fa793a3dc42d026ceded333958f3b79243a11db1'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/desmume/desmume-#{version}-mac.dmg"
  name 'DeSmuME'
  homepage 'http://www.desmume.org'
  license :gpl

  app 'DeSmuME.app'
end
