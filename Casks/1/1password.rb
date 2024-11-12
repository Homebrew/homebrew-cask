cask "1password" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.10.52"
  sha256 arm:   "a8c4733f7836463b120e5132b6058112053b27bc47f60d1a00bbea86c0d7fbe1",
         intel: "0faf2fdf5bfbb405a15bc0abee676add6223d14a25fd1d16a78c96737c21c33a"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*)(?:[._-]\d+[._-]?PRODUCTION)?[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: [
    "1password@beta",
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
