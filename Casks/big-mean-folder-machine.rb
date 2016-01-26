cask 'big-mean-folder-machine' do
  version '2.32'
  sha256 '6fe71811355dc2dc03f6ecab8c77877e970d1052f2987c94aed8c9255881ac6d'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: 'e44f22c31ee21b0f40f0454bd47e452cb5b5a9140632c62c1239a4012abf7956'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app "Big Mean Folder Machine #{version.major}.app"
end
