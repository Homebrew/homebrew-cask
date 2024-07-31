cask "mweb-pro" do
  version "4.6.3"
  sha256 "d58493dd59d466ab1af7d5124717410132f06c696975e4f8fe82d8ee49325668"

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
