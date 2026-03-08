cask "base" do
  version "3.3.0"
  sha256 "1e943707779f277848aac9c430a4cf5fe0a67f1403f73334dd5781dccecfcbf6"

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
