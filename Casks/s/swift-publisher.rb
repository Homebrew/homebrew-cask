cask "swift-publisher" do
  version "5.6.9"
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

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/7TJZ7EZWM6.com.belightsoft.PrintProducts",
    "~/Library/Caches/com.belightsoft.SwiftPublisher5",
    "~/Library/Group Containers/7TJZ7EZWM6.com.belightsoft.PrintProducts",
    "~/Library/HTTPStorages/com.belightsoft.SwiftPublisher5",
    "~/Library/Preferences/com.belightsoft.SwiftPublisher5.plist",
    "~/Library/Saved Application State/com.belightsoft.SwiftPublisher5.savedState",
    "~/Library/WebKit/Databases/___IndexedDB/com.belightsoft.SwiftPublisher5",
  ]
end
