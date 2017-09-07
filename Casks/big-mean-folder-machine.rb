cask 'big-mean-folder-machine' do
  version '2.36'
  sha256 'a25385e4281a55efd36d6fff9ea641c36def1277bf18975dff9111f8c768034d'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: '947e1219de7f228bcca809fd0ffc3798188bbb1d2df0e6fa9a9b6efe41fef3b0'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'

  app "Big Mean Folder Machine #{version.major}.app"
end
