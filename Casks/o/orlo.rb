cask "orlo" do
  version "1.2.4"
  sha256 "13574216e7bdbadbf9457852a960377150f20fc32935f0626790e79c27b7c744"

  url "https://orlo.akxl.io/app/orlo-#{version}.dmg"
  name "Orlo"
  desc "Multi-connection download manager with BitTorrent and browser capture"
  homepage "https://orlo.akxl.io/"

  livecheck do
    url "https://orlo.akxl.io/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Orlo.app"

  uninstall quit:       "io.akxl.orlo",
            login_item: "Orlo"

  zap trash: [
    "~/Library/Application Support/Arc/User Data/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/BraveSoftware/Brave-Browser/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Chromium/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/com.operasoftware.Opera/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/io.akxl.orlo",
    "~/Library/Application Support/LibreWolf/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Orlo",
    "~/Library/Application Support/Vivaldi/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Waterfox/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/zen/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Caches/io.akxl.orlo",
    "~/Library/Containers/io.akxl.orlo.SafariExtension",
    "~/Library/Group Containers/22RTADPHUC.orlo",
    "~/Library/HTTPStorages/io.akxl.orlo",
    "~/Library/Preferences/io.akxl.orlo.plist",
    "~/Library/Saved Application State/io.akxl.orlo.savedState",
    "~/Library/WebKit/io.akxl.orlo",
  ]
end
