cask "swift-shift" do
  version "1.5.0"
  sha256 "69fef40288963a3e75788298fe9cd0a42b5fee63b92a2b4412fa57f5d67beaee"

  url "https://github.com/pablopunk/SwiftShift/releases/download/#{version}/SwiftShift.zip"
  name "Swift Shift"
  desc "Window manager"
  homepage "https://www.swiftshift.app/"

  livecheck do
    url "https://pablopunk.github.io/SwiftShift/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Swift Shift.app"

  uninstall quit:       "com.pablopunk.Swift-Shift",
            login_item: "Swift Shift"

  zap trash: [
    "~/Library/HTTPStorages/com.pablopunk.Swift-Shift",
    "~/Library/Preferences/com.pablopunk.Swift-Shift.plist",
  ]
end
