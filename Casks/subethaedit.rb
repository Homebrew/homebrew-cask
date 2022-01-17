cask "subethaedit" do
  version "5.2.4,9813"
  sha256 "11f9cce3e33988a912f9c1df085ebd0d58b65fc856dc7806041b70bcd30c5043"

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

  zap trash: [
    "~/Library/Application Scripts/de.codingmonkeys.SubEthaEdit.MacFULL",
    "~/Library/Containers/de.codingmonkeys.SubEthaEdit.MacFULL",
  ]
end
