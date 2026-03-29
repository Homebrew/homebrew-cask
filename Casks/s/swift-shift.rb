cask "swift-shift" do
  version "1.0.2"
  sha256 "03988948c0307442bd353081e740e3947a407380584c7bc1695d92674ddf29ea"

  url "https://github.com/pablopunk/SwiftShift/releases/download/#{version}/SwiftShift.zip",
      verified: "github.com/pablopunk/SwiftShift/"
  name "Swift Shift"
  desc "Window manager"
  homepage "https://www.swiftshift.app/"

  livecheck do
    url "https://pablopunk.github.io/SwiftShift/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Swift Shift.app"

  uninstall quit:       "com.pablopunk.Swift-Shift",
            login_item: "Swift Shift"

  zap trash: [
    "~/Library/HTTPStorages/com.pablopunk.Swift-Shift",
    "~/Library/Preferences/com.pablopunk.Swift-Shift.plist",
  ]
end
