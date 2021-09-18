cask "keepassium" do
  version "1.26.94,1.25.94"
  sha256 "b005eee274080820836efb6c6320fe04cdb9d495a558e98967ce19c2b492e7dd"

  url "https://github.com/keepassium/KeePassium/releases/download/#{version.before_comma}/KeePassium-#{version.after_comma}.dmg",
      verified: "https://github.com/keepassium/KeePassium/"
  name "KeePassium"
  desc "KeePass-compatible password manager"
  homepage "https://keepassium.com/"

  livecheck do
    url "https://github.com/keepassium/KeePassium/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+(?:.\d+)*)/KeePassium-(\d+(?:.\d+)*).dmg})
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "KeePassium.app"

  zap trash: [
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.keepassium.ios*",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.keepassium.ios",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.keepassium.*",
    "~/Library/Application Scripts/com.keepassium.*",
    "~/Library/Mobile Documents/iCloud~com~keepassium*",
    "~/Library/Group Containers/group.com.keepassium",
    "~/Library/Containers/com.keepassium.*",
  ]
end
