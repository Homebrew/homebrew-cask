cask "swift-shift" do
  version "1.3.2"
  sha256 "b4e3d8b2e922111e142210c07aff6501fe4e03fe74b44f516eb2abfc917b8b80"

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
