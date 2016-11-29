cask 'desmume' do
  version '0.9.11'
  sha256 'c3ff7024e0905f1c1da390d0fa793a3dc42d026ceded333958f3b79243a11db1'

  url "https://downloads.sourceforge.net/desmume/desmume-#{version}-mac.dmg"
  appcast 'https://sourceforge.net/projects/desmume/rss',
          checkpoint: '996ce5b97e3b872cd79f4b5b7ba14f90468d2f421f4d981b4eff049d026b378a'
  name 'DeSmuME'
  homepage 'https://sourceforge.net/projects/desmume/'

  app 'DeSmuME.app'
end
