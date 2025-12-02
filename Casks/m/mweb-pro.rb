cask "mweb-pro" do
  version "4.7.9"
  sha256 "6306a902e4458c56b19bf386b85a38a254a23934e31d2b9c5328be12ca68f9a1"

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
