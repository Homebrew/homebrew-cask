cask "mweb-pro" do
  version "4.4.7"
  sha256 "ade3bdd6e64216b7b20137073ef0d34d6e0aab77079b71aa43101e1e6b7b7c48"

  url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
      verified: "cdn.mwebapp.cn/"
  name "MWeb Pro"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://www.mweb.im/update_v4.json"
    regex(/"version":"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "MWeb Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.coderforart.MWeb3",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coderforart.mweb3.sfl*",
    "~/Library/Application Support/MWeb",
    "~/Library/Containers/com.coderforart.MWeb3",
    "~/Library/Cookies/com.coderforart.MWeb3.binarycookies",
    "~/Library/Preferences/com.coderforart.MWeb3.plist",
  ]
end
