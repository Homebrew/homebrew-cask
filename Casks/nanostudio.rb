cask :v1 => 'nanostudio' do
  version '1.42'
  sha256 'f6f834116213d1d007b17063fc816197de90044b8bb286df5d9b42d807e1f3ab'

  url "http://downloads.blipinteractive2.co.uk/NanoStudio-#{version}.dmg.zip"
  homepage 'http://www.blipinteractive2.co.uk/'
  license :commercial

  container :nested => "NanoStudio-#{version}.dmg"

  app 'NanoStudio.app'
  app 'NanoStudio-Phone.app'
  app 'NanoStudio-Tablet.app'
end
