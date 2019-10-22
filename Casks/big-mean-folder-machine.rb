cask 'big-mean-folder-machine' do
  version '2.40'
  sha256 '1d2e2bfa6eab3b5adb817447e3590dc2617833a7514c889185cb0bf45253048f'

  url 'https://www.publicspace.net/download/BMFM.dmg'
  appcast "https://www.publicspace.net/app/bmfm#{version.major}.xml"
  name 'Big Mean Folder Machine'
  homepage 'https://www.publicspace.net/BigMeanFolderMachine/'

  app "Big Mean Folder Machine #{version.major}.app"
end
