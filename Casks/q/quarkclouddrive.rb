cask "quarkclouddrive" do
  version "7.3.5.810,3004627"
  sha256 "b8cd730e9e5ae570d562e6c9d5041b0b65e2962d6711b2a04870c050310bfb8f"

  url "https://umcdn.quark.cn/download/37213/quarkclouddrivemac/pckk@product_guanwang_macmini/QuarkCloudDriveMac_V#{version.csv.first}_mac_pf30003_(zh-cn)_releasemini_(Build#{version.csv.second}).dmg"
  name "Quark Cloud Drive"
  name "夸克网盘"
  desc "Cloud storage and file management platform"
  homepage "https://pan.quark.cn/"

  livecheck do
    url "https://pan.quark.cn/api/client_version"
    regex(%r{QuarkCloudDriveMac[._-]v?(\d+(?:\.\d+)+)[^/]*\(Build(\d+)\)\.dmg}i)
    strategy :json do |json, regex|
      url = json.dig("data", "origin_macDmgForArmUrl") || json.dig("data", "macDmgForArmUrl")
      match = url&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on :macos

  installer script: {
    executable: "QuarkCloudDrive.app/Contents/MacOS/QuarkCloudDrive",
    args:       [
      "--quark-install",
      "--install-from=mini_install",
      "--quark-ch=pckk@product_guanwang_macmini",
    ],
  }

  uninstall launchctl: "application.com.quark.clouddrive.desktop.*",
            quit:      "com.quark.clouddrive.desktop",
            trash:     "/Applications/QuarkCloudDrive.app"

  zap trash: [
    "~/Library/Application Support/QuarkCloudDrive",
    "~/Library/Caches/com.quark.clouddrive.desktop",
    "~/Library/Caches/com.quark.clouddrive.macinstaller",
    "~/Library/Caches/QuarkCloudDriveInstaller",
    "~/Library/Logs/QuarkCloudDrive",
    "~/Library/Preferences/com.quark.clouddrive.desktop.plist",
    "~/Library/Saved Application State/com.quark.clouddrive.desktop.savedState",
  ]
end
