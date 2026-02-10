cask "awesun" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "_ARM"

  version "16.2.0.27059"
  sha256 arm:   "eb7e8e36338dcd8109056f2547d3d3f32d42fde169ead276d8c74c456942fd9e",
         intel: "30627f95c8cf16446f873ebf168f3ade4d3f90a703590bf4c644e17f71635f74"

  url "https://dw.oray.com/sl/mac/AweSun_#{version}_#{arch}.dmg"
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
