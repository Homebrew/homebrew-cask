cask "anytype@alpha" do
  arch arm: "arm64", intel: "x64"

  version "0.54.19-alpha"
  sha256 arm:   "5cf693c95f47bfe602c909e1fb86a476474a02c236c42d89af2a1486943b10ff",
         intel: "57928644c32cb211cf0e9043b00ed8424773b9087e15e77d7b0bb12c4e831dc4"

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
  depends_on macos: ">= :monterey"

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
