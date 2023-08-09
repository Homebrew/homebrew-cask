cask "swiftstack-client" do
  version "1.27.1"
  sha256 "d91cd9da8470954978ee3cdcd74faaf4be3c128c5895d28b46b00778d8b7558e"

  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg",
      verified: "storage.googleapis.com/swiftstack/"
  name "SwiftStack GUI Client"
  desc "Access the SwiftStack data storage and management platform"
  homepage "https://www.swiftstack.com/"

  livecheck do
    url "https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html"
    regex(/URL=.*?swiftstackclient[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "SwiftStack Client.app"

  zap trash: [
    "~/.swiftstackclient",
    "~/Library/Application Support/SwiftStack Client",
    "~/Library/Logs/SwiftStack Client",
    "~/Library/Preferences/com.swiftstack.swiftstackclient.helper.plist",
    "~/Library/Preferences/com.swiftstack.swiftstackclient.plist",
    "~/Library/Saved Application State/com.swiftstack.swiftstackclient.savedState",
    "~/swiftstack_client_volumes",
  ]
end
