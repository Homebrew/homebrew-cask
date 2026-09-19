cask "anytype@beta" do
  arch arm: "arm64", intel: "x64"

  version "0.56.10-beta"
  sha256 arm:   "02f8e983550e10aca8955cb7e6324bf965eb156ac39a124f3c1fc61ef8529284",
         intel: "02ca3c9ffb6bf2721f55644ef1258c0851404657d47ea99653725424531b50d0"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/beta-mac.yml?v=#{Time.now.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: [
    "anytype",
    "anytype@alpha",
  ]
  depends_on macos: :monterey

  app "Anytype.app"

  zap trash: [
    "~/Library/Application Support/anytype",
    "~/Library/Application Support/Chromium/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anytype.anytype.sfl*",
    "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Google/Chrome Canary/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Google/Chrome Dev/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Microsoft Edge Beta/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Microsoft Edge Canary/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Microsoft Edge Dev/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Application Support/Vivaldi/NativeMessagingHosts/com.anytype.desktop.json",
    "~/Library/Preferences/com.anytype.anytype.plist",
  ]
end
