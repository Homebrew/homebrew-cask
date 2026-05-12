cask "awesun" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "_ARM"

  version "16.3.0.29530"
  sha256 arm:   "6d00b61a342419dd4c5aba765424ceb00910aecb40b4a7cb39880e1aad8b9e7a",
         intel: "cccffbd64b1c2308fb32e5e86b6b93e477a8f27733dba35ffa0fe27d9beb0a24"

  url "https://dl.oray.com/sl/mac/AweSun_#{arch}_#{version}.dmg"
  name "Sunlogin Client"
  name "向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://client-webapi.oray.com/softwares/SUNLOGIN_X_MAC#{livecheck_id}?versiontype=stable"
    strategy :json do |json|
      json["versionno"]
    end
  end

  depends_on :macos

  pkg "AweSun.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The AweSun package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close AweSun to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/AweSun.app"]
  end

  uninstall launchctl: [
              "com.oray.awesun.agent",
              "com.oray.awesun.desktopagent",
              "com.oray.awesun.helper",
              "com.oray.awesun.service",
              "com.oray.awesun.startup",
            ],
            quit:      "com.oray.sunlogin.macclient",
            pkgutil:   [
              "com.oray.sunlogin.macclient",
              "com.oray.sunlogin.MacVirtualAudioDevice",
            ],
            delete:    "/Applications/AweSun.app"

  zap delete: "/private/var/log/AweSun/",
      trash:  [
        "/Library/Application Support/Oray/AweSun",
        "/Library/LaunchDaemons/com.oray.awesun.helper.plist",
        "/Library/LaunchDaemons/com.oray.awesun.plist",
        "~/AweSun",
        "~/Library/Application Support/AweSun",
        "~/Library/Caches/com.oray.sunlogin.macclient",
        "~/Library/Preferences/com.oray.sunlogin.macclient.plist",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "~/protocol_config.conf",
        "~/Sunlogin Files",
      ]
end
