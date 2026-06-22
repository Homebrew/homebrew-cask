cask "novation-components" do
  version "1.69.0"
  sha256 "960ff0423ef3b466194d3503bb024305affd5d0f2bb2b4c30f4edda8d7c09873"

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
  depends_on macos: :monterey

  app "Components.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.novationmusic.circuitcomponents.sfl*",
    "~/Library/Application Support/Components",
    "~/Library/Caches/com.novationmusic.circuitcomponents*",
    "~/Library/HTTPStorages/com.novationmusic.circuitcomponents",
    "~/Library/Preferences/com.novationmusic.circuitcomponents.plist",
  ]
end
