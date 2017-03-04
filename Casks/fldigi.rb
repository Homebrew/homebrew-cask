cask 'fldigi' do
  version '3.23.21'
  sha256 'dfd6b4690db09753721e869b3a24413a8db39f52ba569aac76a85f66b0ff999d'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'aa08b31a840dacc7f47393721ea5b875313839d841d345edf1296ac316182025'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
