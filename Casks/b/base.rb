cask "base" do
  version "3.2.1"
  sha256 "7442bd7bfa3a6fd6bffda98e46a4c5dce555709b82dc6e5bd9efa9714732faf0"

  url "https://files.menial.co.uk/base/Base-#{version}.zip"
  name "Menial Base"
  desc "App to create, design, edit and browse SQLite 3 database files"
  homepage "https://menial.co.uk/base/"

  livecheck do
    url "https://update.menial.co.uk/software/base3/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

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
