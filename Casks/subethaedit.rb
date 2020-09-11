cask "subethaedit" do
  version "5.1.4"
  sha256 "07d6083809575785ee9099e15bded2aa371178a54b60ad6940e552bfc971b83e"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast "https://subethaedit.net/appcast.xml"
  name "SubEthaEdit"
  desc "Plain text and source editor"
  homepage "https://subethaedit.net/"

  depends_on macos: ">= :high_sierra"

  app "SubEthaEdit.app"
end
