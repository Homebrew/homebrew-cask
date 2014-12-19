cask :v1 => 'firestorm' do
  version '4.6.9.42974'
  sha256 '423c7f6f0d262153fa655fd8a39b6d56c22744c57dfc2d7972bf4bf94d612459'

  url 'http://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64-4-6-9-42974.dmg'
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'http://www.firestormviewer.org'
  license :oss

  app 'FirestormOS-Releasex64.app'

  caveats 'This version does not contain Havok engine (does not matter if you`re not a content creator). Most problems that crop up during updates can be resolved or fixed by performing a clean install — see http://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.'
end
