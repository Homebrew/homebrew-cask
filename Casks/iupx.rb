cask 'iupx' do
  version '1.2'
  sha256 '24f2bc2dacd31ce7f3dd883b70b32fc9b8cea447a7b309333108b9888cb194d5'

  url "http://downloads.sourceforge.net/sourceforge/iupx/iUPX_#{version.sub('.', '_')}_universal.zip"
  appcast 'http://iupx.sourceforge.net/updates/appcast.xml',
          :checkpoint => '4dbae1b69841d573fa64a4feef160079843d545534815fe1c606e87b43d6cfc3'
  name 'iUPX'
  homepage 'http://iupx.sourceforge.net'
  license :gpl

  app 'iUPX.app'
end
