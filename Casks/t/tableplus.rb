cask "tableplus" do
  version "6.7.0,634"
  sha256 "b8ec7898fb4bbe0d6f42554b0140aafd277b162b4606d6919e36d0524541b1f5"

  url "https://files.tableplus.com/macos/#{version.csv.second}/TablePlus.dmg"
  name "TablePlus"
  desc "Native GUI tool for relational databases"
  homepage "https://tableplus.com/"

  livecheck do
    url "https://tableplus.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TablePlus.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.TablePlus",
    "~/Library/Caches/com.tinyapp.TablePlus",
    "~/Library/Cookies/com.tinyapp.TablePlus.binarycookies",
    "~/Library/Preferences/com.tinyapp.TablePlus.plist",
    "~/Library/Saved Application State/com.tinyapp.TablePlus.savedState",
  ]
end
