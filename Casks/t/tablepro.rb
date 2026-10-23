cask "tablepro" do
  version "0.82.2"
  sha256 "f17d474ed76c9a2e3f9cfedc6173390b0d9ce9ec8c4d6c679b4139dabb4c7030"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}.dmg"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://updates.tablepro.app/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
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
