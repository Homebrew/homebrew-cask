cask "swift-shift" do
  version "1.1.0"
  sha256 "355a6d4db0e3d90db47e370476994fca3d647dbc58fb6e668ebc50cbaf748fbd"

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
  depends_on macos: :ventura

  app "Swift Shift.app"

  uninstall quit:       "com.pablopunk.Swift-Shift",
            login_item: "Swift Shift"

  zap trash: [
    "~/Library/HTTPStorages/com.pablopunk.Swift-Shift",
    "~/Library/Preferences/com.pablopunk.Swift-Shift.plist",
  ]
end
