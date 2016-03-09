cask 'big-mean-folder-machine' do
  version '2.34'
  sha256 '08dd80ee30634dbc608debffd560e8d82be9e326b87d0b245ee0f1b0adcd7225'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: '7df7fbe0e0827130bc3ce7f6bdc3ad3fc3c57323cf3aa6b8cfedbf696a9f7282'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app "Big Mean Folder Machine #{version.major}.app"
end
