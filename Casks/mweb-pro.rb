cask "mweb-pro" do
  version "4.2.6"

  if MacOS.version <= :catalina
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}_catalina.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "ed34f1738cf8155b877de9a5a08bcf2e7c5bb52536aad3d698868be5543d0082"
  else
    url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
        verified: "cdn.mwebapp.cn/"
    sha256 "9dd75e5ba0f391e48fb32db56402cdf1d76eec95759153a4653e6ecfb755af9f"
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
