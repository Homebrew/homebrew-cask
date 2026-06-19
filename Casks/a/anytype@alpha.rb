cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.55.15-alpha"
  sha256 arm:   "f8e937ed7d9aa0838be7f6deb55082c1b901f491a6b647499f75e6d88ffacd24",
         intel: "8db650090b9e5ce7802eb425be66f7c16732d163fdd837d0bb449ece67849967"

  url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "anytype-release.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://anytype-release.fra1.cdn.digitaloceanspaces.com/alpha-mac.yml?v=#{Time.new.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: [
    "anytype",
    "anytype@beta",
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
