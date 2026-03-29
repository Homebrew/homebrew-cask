cask "swift-shift" do
  version "1.0.0"
  sha256 "9e17c393cf2cb5d554a05b46ae104e6732544e7c282f52ca66e86c5541d62ede"

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
