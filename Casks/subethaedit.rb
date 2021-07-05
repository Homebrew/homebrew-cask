cask "subethaedit" do
  version "5.2,9748"
  sha256 "7e3cb09ee77b6a9aa15bd2a73aed08c081819605fabcb03e230eb02b847c5825"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version.before_comma}.zip"
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
