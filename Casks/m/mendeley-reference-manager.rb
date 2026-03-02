cask "mendeley-reference-manager" do
  version "2.143.0"
  sha256 "107a57775650dcd2b157135dd0ce385ae34eaec134772b03ecbe0c3db9e8f672"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}-universal.dmg"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  livecheck do
    url :homepage
    regex(/href=.*?mendeley-reference-manager[._-]v?(\d+(?:\.\d+)+)(?:[._-]universal)?\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.elsevier.mendeley.sfl*",
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
