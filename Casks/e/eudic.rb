cask "eudic" do
  version "4.6.1,2024-01-10"
  sha256 "d47f28d44082d889082cde3e812f19939c46b99ba56ca1dfa013760a586f539a"

  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Eudic"
  name "欧路词典"
  desc "European dictionary"
  homepage "https://www.eudic.net/v4/en/app/eudic"

  livecheck do
    url "https://www.eudic.net/update/eudic_mac.xml"
    regex(/href=.*?eudicmac\.dmg\?v=(\d+(?:-\d+)+)/i)
    strategy :sparkle do |item, regex|
      download_page = Homebrew::Livecheck::Strategy.page_content("https://www.eudic.net/v4/en/app/download")
      next if download_page[:content].blank?

      match = download_page[:content].match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Eudic.app"

  uninstall quit: [
    "com.eusoft.eudic",
    "com.eusoft.eudic.LightPeek",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.eusoft.eudic.QuickLook",
    "~/Library/Application Support/com.eusoft.eudic",
    "~/Library/Caches/com.eusoft.eudic",
    "~/Library/Caches/com.eusoft.eudic.LightPeek",
    "~/Library/Containers/com.eusoft.eudic.QuickLook",
    "~/Library/Eudb_en",
    "~/Library/HTTPStorages/com.eusoft.eudic",
    "~/Library/HTTPStorages/com.eusoft.eudic.binarycookies",
    "~/Library/Preferences/com.eusoft.eudic.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.eudic.plist",
    "~/Library/Preferences/group.com.eusoft.eudic.plist",
    "~/Library/WebKit/com.eusoft.eudic",
    "~/Library/WebKit/com.eusoft.eudic.LightPeek",
  ]
end
