cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.76.1"
  sha256 arm:   "67bf75d0e5e5fb25965ce9ca34c8ea8566942ad8b5658dc9f86601785a8fd2c4",
         intel: "a0a7787ba8e1bec6091dbf1bfe0e6b12440be7b936d29a89af3a8b9882b7ce46"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "TablePro.app"

  uninstall quit: "com.TablePro"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tablepro.sfl*",
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
