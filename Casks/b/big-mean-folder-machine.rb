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

  zap trash: [
    "~/Library/Application Support/Big Mean Folder Machine*",
    "~/Library/HTTPStorages/net.publicspace.dist.bmfm*",
    "~/Library/HTTPStorages/net.publicspace.dist.bmfm*.binarycookies",
    "~/Library/Preferences/net.publicspace.dist.bmfm*.plist",
    "~/Library/Saved Application State/net.publicspace.dist.bmfm*.savedState",
  ]
end
