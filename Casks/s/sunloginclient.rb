cask "sunloginclient" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "187", intel: "89"

  version "15.0.0.56588"
  sha256 arm:   "7e8c0c91db6b4e634c9e5227649764bccba14fdca84817b6127dec5baba1e501",
         intel: "8045d092c28d858ac6d97d93d306594572ed08394874fa421272a0d814a19d5c"

  url "https://down.oray.com/sunlogin/mac/SunloginClient_#{version}_#{arch}.dmg"
  name "Sunlogin Client"
  name "向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=#{livecheck_id}"
    regex(/SunloginClient[._-]?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  pkg "SunloginClient.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The SunloginClient package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close SunloginClient to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/SunloginClient.app"]
  end

  uninstall launchctl: [
              "com.oray.sunlogin ()",
              "com.oray.sunlogin.agent",
              "com.oray.sunlogin.desktopagent",
              "com.oray.sunlogin.helper",
              "com.oray.sunlogin.service",
              "com.oray.sunlogin.startup",
            ],
            pkgutil:   "com.oray.sunlogin.macclient",
            quit:      "com.oray.sunlogin.macclient"

  zap delete: "/private/var/log/sunlogin/",
      trash:  [
        "~/Library/Caches/com.oray.sunlogin.macclient",
        "~/Library/Preferences/com.oray.sunlogin.macclient.plist",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "~/Sunlogin Files",
      ]
end
