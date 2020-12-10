cask "big-mean-folder-machine" do
  version "2.42"
  sha256 :no_check

  url "https://www.publicspace.net/download/BMFM.dmg"
  appcast "https://www.publicspace.net/app/bmfm#{version.major}.xml"
  name "Big Mean Folder Machine"
  desc "File/folder management utility"
  homepage "https://www.publicspace.net/BigMeanFolderMachine/"

  app "Big Mean Folder Machine #{version.major}.app"
end
