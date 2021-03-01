cask "ipe" do
  version "7.2.23"
  sha256 "2b8eb718a962fd3ccbbc43c64fc31e78d4eb4fe5da41df10ac693b0e98368bc4"

  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg",
      verified: "bintray.com/otfried/"
  name "Ipe"
  desc "Drawing editor for creating figures in PDF format"
  homepage "http://ipe.otfried.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/ipe-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "Ipe.app"

  zap trash: [
    "~/.ipe",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl*",
    "~/Library/Preferences/org.otfried.ipe.Ipe.plist",
    "~/Library/Saved Application State/org.otfried.ipe.savedState",
  ]
end
