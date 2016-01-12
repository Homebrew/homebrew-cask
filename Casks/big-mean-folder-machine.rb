cask 'big-mean-folder-machine' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast 'http://www.publicspace.net/app/bmfm2.xml',
          :sha256 => '71a01ee29cc6533a70d80a05e1a03ae95a1e22eaa8300b1c28b9e91e59b986f1'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app 'Big Mean Folder Machine 2.app'
end
