cask "mendeley-reference-manager" do
  version "2.136.0"
  sha256 "df6171d350f3f99747196d193eb41e6b5f688020dec5f753cac20fde100a8465"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}-universal.dmg"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  livecheck do
    url :homepage
    regex(/href=.*?mendeley-reference-manager[._-]v?(\d+(?:\.\d+)+)(?:[._-]universal)?\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.elsevier.mendeley.sfl*",
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
