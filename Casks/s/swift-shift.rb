cask "swift-shift" do
  version "0.26.0"
  sha256 "97b9b48af1e558b7b6635257a3b3d3d48fd87a1c2aef121adf5bf5d7fef198b6"

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
