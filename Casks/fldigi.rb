cask 'fldigi' do
  version '4.0.2'
  sha256 '79a6102d5d69e814b58d66cb8bc8ceac7f506005b3481fbf71261a9a28296aea'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'bed8ba38f33a34e1d0c83dd196babcb31cc68126fe5a14a082664a8601d1303e'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
