cask 'big-mean-folder-machine' do
  version '2.33'
  sha256 '251f6c4be56c42f0130176a3f4564c5feb992de24ed56d8b19bbde12a6bad264'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: 'e9e8ef5ef842b2f5357010604455ec57673c839c2b46d80cb088c2063ba852ec'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'
  license :commercial

  app "Big Mean Folder Machine #{version.major}.app"
end
