cask "1password@beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "8.12.36-32.BETA"
  sha256 arm:   "a9ce666435cfd274039f9ccef3ece8190d0636134d726f194679a5fcb4c57b48",
         intel: "6611dc3a80c682520482f5955c00c70d195575e5a041446035470ef662f4d6e0"

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/check/2/99/#{arch}/OPM#{version.major}/en/0/A1/Y"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "1password",
    "1password@nightly",
  ]
  depends_on macos: :monterey

  app "1Password.app"

  uninstall launchctl: [
              "2BUA8C4S2C.com.1password.browser-helper",
              "com.1password.1password-launcher",
            ],
            quit:      "com.1password.1password"

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
