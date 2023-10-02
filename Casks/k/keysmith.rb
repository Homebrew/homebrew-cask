cask "keysmith" do
  version "1.18.6"
  sha256 "fc214773a25fc0406fbfc33d17e1aadd895a6c12fdb22453652b1f40fe323bf2"

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
