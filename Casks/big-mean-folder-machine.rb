cask 'big-mean-folder-machine' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast 'http://www.publicspace.net/app/bmfm2.xml',
          :sha256 => 'c886946cb72a495d947616e6ef3c5ed1501a08eab0204e52936ebd50bd7125c2'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app 'Big Mean Folder Machine 2.app'
end
