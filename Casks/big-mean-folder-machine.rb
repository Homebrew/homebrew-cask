cask :v1 => 'big-mean-folder-machine' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast 'http://www.publicspace.net/app/bmfm2.xml'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app 'Big Mean Folder Machine 2.app'
end
