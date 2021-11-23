cask "mweb-pro" do
  version "4.2.2"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "03c263aec90fdad780e68cdc00e81bc4a325ab8728607e82d13114bc8559c09b"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "28c39c263c00c791031718e3fc19945bafab4986fb83d11f3494bdd62cf517ef"
  end

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
