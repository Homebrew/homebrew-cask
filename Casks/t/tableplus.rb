cask "tableplus" do
  version "6.1.6,570"
  sha256 "a4b466cf502cdcd54c95cb636dd69a0b3355b72140196cc7ec10591f6edb875a"

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
