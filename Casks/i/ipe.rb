cask "ipe" do
  version "7.2.28"
  sha256 "de2caffc8c4b6c91b8403071c252fbeb1044f3779bac938af4b6251e5f59ec66"

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
