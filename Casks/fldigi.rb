cask 'fldigi' do
  version '3.23.18'
  sha256 '45ea2dd8a9874560881cc896d1a294fafeefde5c20c50a96f34afd01aebb08bc'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'acd7cbf6614894703042b9329656b59f5ef900731776dcc00ec563038aafcfeb'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
