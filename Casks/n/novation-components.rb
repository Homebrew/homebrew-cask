cask "novation-components" do
  version "1.63.1"
  sha256 "ec60f1097788d38b9bfb87ae7b1b25734b950988e9bf1372b0fe833415d6c27d"

  url "https://components-updates.novationmusic.com/download/version/#{version}/osx_64?filetype=zip"
  name "Novation Components"
  desc "Manager and updater for Novation hardware"
  homepage "https://novationmusic.com/components/"

  livecheck do
    url "https://components-updates.novationmusic.com/update/darwin/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Components.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.novationmusic.circuitcomponents.sfl*",
    "~/Library/Application Support/Components",
    "~/Library/Caches/com.novationmusic.circuitcomponents*",
    "~/Library/HTTPStorages/com.novationmusic.circuitcomponents",
    "~/Library/Preferences/com.novationmusic.circuitcomponents.plist",
  ]
end
