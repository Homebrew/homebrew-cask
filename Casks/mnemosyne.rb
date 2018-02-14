cask 'mnemosyne' do
  version '2.6'
  sha256 'e4a965c4cdc8478baea0be940e333b83016deff3106b3d7f3fb993c479b45a20'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: '5c80600a3f49a12dc1db4aa65b048c306d04af6928b4027aa984f2cde627fb75'
  name 'Mnemosyne'
  homepage 'https://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
