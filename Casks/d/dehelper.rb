cask "dehelper" do
  version "4.6.1,2024-01-06"
  sha256 "e20a93c9f00fae04038a9efe157563e084ccbcfa69b97265c8cbfdf241c612d7"

  url "https://static.frdic.com/pkg/dhmac.dmg?v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Dehelper"
  name "德语助手"
  desc "Chinese-German dictionary"
  homepage "https://www.eudic.net/v#{version.major}/de/app/dehelper"

  livecheck do
    url "https://www.eudic.net/update/dehelper_mac.xml"
    regex(/href=.*?dhmac\.dmg\?v=(\d+(?:-\d+)+)/i)
    strategy :sparkle do |item, regex|
      download_page = Homebrew::Livecheck::Strategy.page_content("https://www.eudic.net/v4/de/app/download")
      next if download_page[:content].blank?

      match = download_page[:content].match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "dehelper.app"

  uninstall quit: [
    "com.eusoft.dehelper",
    "com.eusoft.dehelper.LightPeek",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.eusoft.dehelper.QuickLook",
    "~/Library/Caches/com.eusoft.dehelper",
    "~/Library/Caches/com.eusoft.dehelper.LightPeek",
    "~/Library/Containers/com.eusoft.dehelper.QuickLook",
    "~/Library/Eudb_de",
    "~/Library/HTTPStorages/com.eusoft.dehelper",
    "~/Library/HTTPStorages/com.eusoft.dehelper.binarycookies",
    "~/Library/Preferences/com.eusoft.dehelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.dehelper.plist",
    "~/Library/Preferences/group.com.eusoft.dehelper.plist",
    "~/Library/WebKit/com.eusoft.dehelper",
  ]
end
