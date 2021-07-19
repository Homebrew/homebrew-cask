cask "subethaedit" do
  version "5.2.1,9775"
  sha256 "5129d799e397aca073fbb5d9e38f948d585479ef8538b8ba2a8f020dfa740733"

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
