cask "mendeley-reference-manager" do
  version "2.132.1"
  sha256 "683dc8a17a83fb0e1dc51783ef6c7651604ea35714e6a361ed12793e6547048d"

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
