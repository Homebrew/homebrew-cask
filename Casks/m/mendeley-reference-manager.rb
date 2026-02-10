cask "mendeley-reference-manager" do
  version "2.142.0"
  sha256 "017b8a47526d7131b7b93c0f0ae5b6e1621543f291365b1a6fbb75b2c593d4ca"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}-universal.dmg"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  livecheck do
    url :homepage
    regex(/href=.*?mendeley-reference-manager[._-]v?(\d+(?:\.\d+)+)(?:[._-]universal)?\.dmg/i)
  end

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.elsevier.mendeley.sfl*",
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
