cask "mweb-pro" do
  version "4.8.2"
  sha256 "e74ebb43dc51f456a3ba3aeb86df0ef2107993871c120f4df2da7850594aca3e"

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

  depends_on :macos

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
