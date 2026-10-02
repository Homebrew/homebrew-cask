cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.77.0"
  sha256 arm:   "f4e07cfb63a5c6ba6865f676518079090e87c55586f1144f9736d423b965adcf",
         intel: "2d4a5cf74d0914b5eba5850540436a03107e4e06fe01a169c82f12fbe6f49ff2"

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
