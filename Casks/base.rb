cask "base" do
  version "2.5.1"
  sha256 "42ac2783562f872f17de667c1c450b6bd0f936effc010bdbcceb49d13efef3ce"

  url "https://files.menial.co.uk/base/base_#{version}.zip"
  appcast "https://update.menial.co.uk/software/base/"
  name "Menial Base"
  desc "App to create, design, edit and browse SQLite 3 database files"
  homepage "https://menial.co.uk/base/"

  depends_on macos: ">= :mojave"

  app "Base.app"

  zap trash: [
    "~/Library/Application Support/Base",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/uk.co.menial.base.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/uk.co.menial.base.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/uk.co.menial.base.help*",
    "~/Library/Caches/uk.co.menial.Base",
    "~/Library/Preferences/uk.co.menial.Base.plist",
  ]
end
