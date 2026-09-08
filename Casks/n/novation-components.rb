cask "novation-components" do
  version "1.71.0"
  sha256 "c531ae27e03b12705e3d1c8f5d186b0a47b7aae41880539be33d3a2543ebdc49"

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
