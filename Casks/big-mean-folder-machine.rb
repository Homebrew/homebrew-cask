cask 'big-mean-folder-machine' do
  version '2.39'
  sha256 '9625293528edf4b32f62bbbd21dac956acf0a1902523e63153f6be01063f75fc'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml"
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'

  app "Big Mean Folder Machine #{version.major}.app"
end
