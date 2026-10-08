cask "tableplus" do
  version "27.0.2,818"
  sha256 "e60d921e80ec82e0354d849e7de39fb782e0151bb96848b9b54e61f9dda41cae"

  url "https://files.tableplus.com/macos/#{version.csv.second}/TablePlus.dmg"
  name "TablePlus"
  desc "Native GUI tool for relational databases"
  homepage "https://tableplus.com/"

  livecheck do
    url "https://tableplus.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

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
