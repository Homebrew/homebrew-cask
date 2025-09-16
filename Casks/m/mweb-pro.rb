cask "mweb-pro" do
  version "4.7.4"
  sha256 "0e3b5a0bc7e93e6460666ca2569a5490445d9dc74aaf7c59e3738f06dfc3efc3"

  url "https://cdn.mwebapp.cn/MWebPro#{version.no_dots}.dmg",
      verified: "cdn.mwebapp.cn/"
  name "MWeb Pro"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://www.mweb.im/update_v#{version.major}.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "MWeb Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.coderforart.MWeb*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coderforart.mweb*.sfl*",
    "~/Library/Application Support/MWeb",
    "~/Library/Containers/com.coderforart.MWeb*",
    "~/Library/Cookies/com.coderforart.MWeb*.binarycookies",
    "~/Library/Preferences/com.coderforart.MWeb*.plist",
  ]
end
