cask "mweb-pro" do
  version "4.6.5"
  sha256 "aee3acedfe3f1801dc4b0d2fd94d8c5dee4fb5237de73c5de9b657a691c76d96"

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

  depends_on macos: ">= :high_sierra"

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
