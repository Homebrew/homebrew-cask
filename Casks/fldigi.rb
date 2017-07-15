cask 'fldigi' do
  version '4.0.7'
  sha256 '66466560f28e5e18edeef6673d941e45346bf1a84423766d4ee9a9439032bece'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'ee2330d042d6df30eb9647b195eafb613323636c3ca68c459d9da056e9ff41ae'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
