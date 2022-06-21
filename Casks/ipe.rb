cask "ipe" do
  version "7.2.24"
  sha256 "af72be083497359d9ee61b716a7b8d718fa773383f44227d334323c4ab33275f"

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
end
