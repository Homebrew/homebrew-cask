cask "1password" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.9.15"
  sha256 arm:   "3c2d5e7d50ce13d782326e3dea4d69f31bfa5466a30c6d7bebd47d2a4666537b",
         intel: "8b23885158e6e99b0e298d7bf15d450c23a22b4c73ba7418bf56e4e6f3b18173"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*)(?:[._-]\d+[._-]?PRODUCTION)?[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/1password-beta"
  depends_on macos: ">= :high_sierra"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password*",
    "~/Library/Application Scripts/com.1password.1password-launcher",
    "~/Library/Application Support/1Password",
    "~/Library/Application Support/Arc/User Data/NativeMessagingHosts/com.1password.1password.json",
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.1password.1password.sfl2",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password*",
    "~/Library/Group Containers/2BUA8C4S2C.com.1password",
    "~/Library/Preferences/com.1password.1password.plist",
    "~/Library/Saved Application State/com.1password.1password.savedState",
  ]
end
