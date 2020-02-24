cask 'big-mean-folder-machine' do
  version '2.41'
  sha256 'd5ac6ccdc6dc01d518b69576b0d969a1d784f7170746ddccd343e8f2977204fa'

  url 'https://www.publicspace.net/download/BMFM.dmg'
  appcast "https://www.publicspace.net/app/bmfm#{version.major}.xml"
  name 'Big Mean Folder Machine'
  homepage 'https://www.publicspace.net/BigMeanFolderMachine/'

  app "Big Mean Folder Machine #{version.major}.app"
end
