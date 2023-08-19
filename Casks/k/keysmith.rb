cask "keysmith" do
  version "1.18.4"
  sha256 "6f27e3aca201ddc451f92a15ca31dc5193a8c94d5b3e03e7e0d5df62ac2b53ad"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  livecheck do
    url "https://www.keysmith.app/versions/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Keysmith.app"

  zap trash: [
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/app.keysmith.keysmith_native_messaging_host.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/app.keysmith.keysmith_native_messaging_host.json",
    "~/Library/Caches/app.keysmith.Keysmith",
    "~/Library/Keysmith",
    "~/Library/HTTPStorages/app.keysmith.Keysmith",
    "~/Library/Preferences/app.keysmith.Keysmith.plist",
    "~/Library/WebKit/app.keysmith.Keysmith",
  ]
end
