cask 'mnemosyne' do
  version '2.6'
  sha256 'e4a965c4cdc8478baea0be940e333b83016deff3106b3d7f3fb993c479b45a20'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne'
  name 'Mnemosyne'
  homepage 'https://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
