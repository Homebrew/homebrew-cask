cask 'big-mean-folder-machine' do
  version '2.37'
  sha256 '8410146f1378ef33244dd2fa816fcc7a6c211d2f3b567526805fd43f0ffd4d59'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: '5a0128ad6e18f886a873dc2cb4b2082f1ff0ac1ead1a90bfb8f4a6077ee5d2b4'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'

  depends_on macos: '>= :lion'

  app "Big Mean Folder Machine #{version.major}.app"
end
