cask "1password@beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.50-13.BETA"
  sha256 arm:   "169ea50edd205adb5ae21fdac7b10711ec8f493de9ce41f7f36b56a90c657cd4",
         intel: "67ccc635ccc9b023aeee241e0da8f5a38bedfa98b292d53da5727e43a0d8ec2b"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*(?:[._-]BETA))[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: [
    "1password",
    "1password@nightly",
  ]
  depends_on macos: ">= :catalina"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password*",
    "~/Library/Application Scripts/2BUA8C4S2C.com.agilebits",
    "~/Library/Application Scripts/com.1password.1password-launcher",
    "~/Library/Application Scripts/com.1password.browser-support",
    "~/Library/Application Support/1Password",
    "~/Library/Application Support/Arc/User Data/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.1password.1password.sfl*",
    "~/Library/Application Support/CrashReporter/1Password*",
    "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Google/Chrome Canary/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Google/Chrome Dev/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Microsoft Edge Beta/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Microsoft Edge Canary/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Microsoft Edge Dev/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Application Support/Vivaldi/NativeMessagingHosts/com.1password.1password.json",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password*",
    "~/Library/Containers/com.1password.browser-support",
    "~/Library/Group Containers/2BUA8C4S2C.com.1password",
    "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
    "~/Library/Logs/1Password",
    "~/Library/Preferences/com.1password.1password.plist",
    "~/Library/Preferences/group.com.1password.plist",
    "~/Library/Saved Application State/com.1password.1password.savedState",
  ]
end
