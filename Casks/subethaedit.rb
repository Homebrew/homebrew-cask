cask "subethaedit" do
  version "5.1.7,9730"
  sha256 "4bf6d46dc5c686cd33c2ad8dfa8f2f5e9330ddbde7970afc522d801612f87691"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version.before_comma}.zip"
  name "SubEthaEdit"
  desc "Plain text and source editor"
  homepage "https://subethaedit.net/"

  livecheck do
    url "https://subethaedit.net/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "SubEthaEdit.app"
end
