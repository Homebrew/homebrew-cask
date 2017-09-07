cask 'fldigi' do
  version '4.0.8'
  sha256 '9d45400b1b3942b5a79d01042bd284c99cf9575157542be152160717f17c6f5e'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'f27999aae707e424c0d55062a925f2af154563bb4479dbfd87cead956b975d1c'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
