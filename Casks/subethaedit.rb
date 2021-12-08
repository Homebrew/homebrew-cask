cask "subethaedit" do
  version "5.2.2,9788"
  sha256 "49eb3a322000c154d6e78c1ac27b8661758f296d7cf843dc7aef128c370873dd"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version.csv.first}.zip"
  name "SubEthaEdit"
  desc "Plain text and source editor"
  homepage "https://subethaedit.net/"

  livecheck do
    url "https://subethaedit.net/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SubEthaEdit.app"
end
