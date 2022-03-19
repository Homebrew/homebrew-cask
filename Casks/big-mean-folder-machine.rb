cask "big-mean-folder-machine" do
  version "2.43"
  sha256 :no_check

  url "https://www.publicspace.net/download/BMFM.dmg"
  name "Big Mean Folder Machine"
  desc "File/folder management utility"
  homepage "https://www.publicspace.net/BigMeanFolderMachine/"

  livecheck do
    url "https://www.publicspace.net/app/bmfm#{version.major}.xml"
    strategy :sparkle
  end

  app "Big Mean Folder Machine #{version.major}.app"
end
