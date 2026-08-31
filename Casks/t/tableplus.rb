cask "tableplus" do
  version "26.9.12,770"
  sha256 "36df6cec348460becd51d1bc09e2497fd995eac749c9ebe74d1a4e83ef2d6aea"

  url "https://files.tableplus.com/macos/#{version.csv.second}/TablePlus.dmg"
  name "TablePlus"
  desc "Native GUI tool for relational databases"
  homepage "https://tableplus.com/"

  livecheck do
    url "https://tableplus.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "TablePlus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyapp.tableplus.sfl*",
    "~/Library/Application Support/com.tinyapp.TablePlus",
    "~/Library/Caches/com.tinyapp.TablePlus",
    "~/Library/Cookies/com.tinyapp.TablePlus.binarycookies",
    "~/Library/HTTPStorages/com.tinyapp.TablePlus",
    "~/Library/Preferences/com.tinyapp.TablePlus.plist",
    "~/Library/Saved Application State/com.tinyapp.TablePlus.savedState",
  ]
end
