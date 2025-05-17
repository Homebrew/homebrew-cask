cask "jetdrive-toolbox" do
  version "4.5"
  sha256 "2a52a2d24d22a120c737e5d9a13eceadd7be59751185a0821ef84fdf6f5605f8"

  url "https://cdn.transcend-info.com/files/special/JetDriveToolbox_v#{version}.zip",
      user_agent: :fake
  name "JetDrive Toolbox"
  desc "Helper for Transcend SSDs and expansion cards"
  homepage "https://www.transcend-info.com/Support/Software-181/"

  livecheck do
    url :homepage
    regex(%r{<p>MAC</p>\s*<p>Version\s*(\d+(?:\.\d+)*)</p>}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map(&:first)
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "JetDriveToolbox_v#{version}.pkg"

  postflight do
    # Enable automatic updates and disable analytics
    {
      SUAutomaticallyUpdate:   true,
      SUEnableAutomaticChecks: true,
      SUHasLaunchedBefore:     true,
      canEnterApp:             true,
      canSendGA:               false,
    }.each do |setting, enabled|
      system_command "/usr/bin/defaults",
                     args: ["write", "com.transcend.JetDriveToolbox-v2", setting.to_s, "-bool", enabled.to_s]
    end
  end

  uninstall launchctl: "com.transcend.JetDriveToolbox-v2",
            quit:      "com.transcend.JetDriveToolbox-v2",
            pkgutil:   "com.transcend.pkg.JetDriveM1",
            delete:    "/Applications/JetDriveToolbox.app"

  zap script: {
    executable: "/usr/bin/defaults",
    args:       ["delete", "com.transcend.JetDriveToolbox-v2"],
  }
end
