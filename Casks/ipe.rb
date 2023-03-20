cask "ipe" do
  version "7.2.26"
  sha256 "93b9b39373b7dffa44b17e7f99bb1078d2d5742e50ff2940d8feef9a8b42e0fe"

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac.dmg",
      verified: "github.com/otfried/ipe/"
  name "Ipe"
  desc "Drawing editor for creating figures in PDF format"
  homepage "https://ipe.otfried.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ipe[._-](\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "Ipe.app"

  zap trash: [
    "~/.ipe",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl*",
    "~/Library/Preferences/org.otfried.ipe.Ipe.plist",
    "~/Library/Saved Application State/org.otfried.ipe.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
