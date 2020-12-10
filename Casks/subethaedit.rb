cask "subethaedit" do
  version "5.1.6"
  sha256 "93cdabb55a9764a96a01732aad4f7cf750bc581a889cc0d45b4bbbc84f563411"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast "https://subethaedit.net/appcast.xml"
  name "SubEthaEdit"
  desc "Plain text and source editor"
  homepage "https://subethaedit.net/"

  depends_on macos: ">= :high_sierra"

  app "SubEthaEdit.app"
end
