cask "swift-publisher" do
  version "5.7.2"
  sha256 :no_check

  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg",
      verified: "belightsoft.s3.amazonaws.com/"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.swiftpublisher.com/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/7TJZ7EZWM6.com.belightsoft.PrintProducts",
    "~/Library/Application Scripts/com.belightsoft.SwiftPublisher#{version.major}.Thumbnail-Extension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.belightsoft.swiftpublisher#{version.major}.sfl*",
    "~/Library/Caches/com.belightsoft.SwiftPublisher#{version.major}",
    "~/Library/Containers/com.belightsoft.SwiftPublisher#{version.major}.Thumbnail-Extension",
    "~/Library/Group Containers/7TJZ7EZWM6.com.belightsoft.PrintProducts",
    "~/Library/HTTPStorages/com.belightsoft.SwiftPublisher#{version.major}",
    "~/Library/Preferences/com.belightsoft.SwiftPublisher#{version.major}.plist",
    "~/Library/Saved Application State/com.belightsoft.SwiftPublisher#{version.major}.savedState",
    "~/Library/WebKit/Databases/___IndexedDB/com.belightsoft.SwiftPublisher#{version.major}",
  ]
end
