class Nanostudio < Cask
  url 'http://downloads.blipinteractive2.co.uk/NanoStudio-1.42.dmg.zip'
  homepage 'http://www.blipinteractive2.co.uk/'
  version '1.42'
  license :commercial
  sha256 'f6f834116213d1d007b17063fc816197de90044b8bb286df5d9b42d807e1f3ab'
  container :nested => 'NanoStudio-1.42.dmg'
  app 'NanoStudio.app'
  app 'NanoStudio-Phone.app'
  app 'NanoStudio-Tablet.app'
end
