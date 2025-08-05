cask "keysmith" do
  version "1.18.7"
  sha256 "d5be3d267ddedd38b67b04b2cc0608969e85b65b4317a32d66de2d6f9c4318eb"

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
    "~/Library/HTTPStorages/app.keysmith.Keysmith",
    "~/Library/Keysmith",
    "~/Library/Preferences/app.keysmith.Keysmith.plist",
    "~/Library/WebKit/app.keysmith.Keysmith",
  ]
end
