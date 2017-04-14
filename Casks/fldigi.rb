cask 'fldigi' do
  version '4.0.2'
  sha256 '79a6102d5d69e814b58d66cb8bc8ceac7f506005b3481fbf71261a9a28296aea'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '893060e24002b65d1e34da33fba64724cb6648e29f83d7e25f7cb1465265fd7c'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
