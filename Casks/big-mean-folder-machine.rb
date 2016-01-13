cask 'big-mean-folder-machine' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast 'http://www.publicspace.net/app/bmfm2.xml',
          :checkpoint => 'e44f22c31ee21b0f40f0454bd47e452cb5b5a9140632c62c1239a4012abf7956'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app 'Big Mean Folder Machine 2.app'
end
