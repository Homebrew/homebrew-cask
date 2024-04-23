cask "tableplus" do
  version "6.0.0,550"
  sha256 "ef1343a9f281fc24d071af976239f4225c623e4db731957508cd7b175fc6ff28"

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
