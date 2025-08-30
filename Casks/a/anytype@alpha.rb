cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.49.17-alpha"
  sha256 arm:   "312f0b6ca49002e32a6774daacb62dc8b88a121c7cc221628d81ea046482e151",
         intel: "a272f55c99d4575f8e38290bd68d0122063b0b4e53630a744a6b0d1dba9227a9"

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
  depends_on macos: ">= :catalina"

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
