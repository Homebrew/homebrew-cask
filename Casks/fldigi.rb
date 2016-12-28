cask 'fldigi' do
  version '3.23.19'
  sha256 'b44222a5982d148e654916a259a7ea74dd72ab082b58ed934e7c34ae917f6b77'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '7fbfd51c00894bb8cd138a3ed6b650d95f706b6cc30446f012a1d4d5558d9262'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
