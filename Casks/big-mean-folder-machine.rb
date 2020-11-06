cask "big-mean-folder-machine" do
  version "2.42"
  sha256 "5324a4904a5559edf587ffd3f5af70aa0a46744631721a8761463c792f755004"

  url "https://www.publicspace.net/download/BMFM.dmg"
  appcast "https://www.publicspace.net/app/bmfm#{version.major}.xml"
  name "Big Mean Folder Machine"
  desc "File/folder management utility"
  homepage "https://www.publicspace.net/BigMeanFolderMachine/"

  app "Big Mean Folder Machine #{version.major}.app"
end
