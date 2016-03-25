cask 'desmume' do
  version '0.9.11'
  sha256 'c3ff7024e0905f1c1da390d0fa793a3dc42d026ceded333958f3b79243a11db1'

  url "http://downloads.sourceforge.net/sourceforge/desmume/desmume-#{version}-mac.dmg"
  name 'DeSmuME'
  homepage 'https://sourceforge.net/projects/desmume/'
  license :gpl

  app 'DeSmuME.app'
end
