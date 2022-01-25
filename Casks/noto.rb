cask "noto" do
  version "1.2,828"
  sha256 "b7fc339543e08374b673e84293bf9819271c8bcc66003ca5c0834bca396949f3"

  url "https://www.brunophilipe.com/software/noto/releases/noto-#{version.csv.first}.dmg"
  name "Noto"
  desc "Simple plain text editor"
  homepage "https://www.brunophilipe.com/software/noto/"

  livecheck do
    url "https://www.brunophilipe.com/software/noto/updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Noto.app"

  zap trash: [
    "~/Library/Application Support/Noto",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brunophilipe.noto.sfl2",
    "~/Library/Caches/com.apple.helpd/Generated/com.brunophilipe.Noto.help*",
    "~/Library/Caches/com.brunophilipe.Noto",
    "~/Library/Preferences/com.brunophilipe.Noto.plist",
    "~/Library/Saved Application State/com.brunophilipe.Noto.savedState",
  ]
end
