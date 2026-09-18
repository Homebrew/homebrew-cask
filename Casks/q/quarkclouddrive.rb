cask "quarkclouddrive" do
  version "7.2.2.806,3004627"
  sha256 "faeedba86b24085e9cc24d4105d37599b7b23f036e21152c5198c98b30d67c37"

  url "https://umcdn.quark.cn/download/37213/quarkclouddrivemac/pckk@product_guanwang_macmini/QuarkCloudDriveMac_V#{version.csv.first}_mac_pf30003_(zh-cn)_releasemini_(Build#{version.csv.second}).dmg"
  name "Quark Cloud Drive"
  name "夸克网盘"
  desc "Cloud storage and file management platform"
  homepage "https://pan.quark.cn/"

  livecheck do
    url "https://pan.quark.cn/api/client_version"
    strategy :json do |json|
      url = json.dig("data", "origin_macDmgForArmUrl") || json.dig("data", "macDmgForArmUrl")
      match = url&.match(%r{QuarkCloudDriveMac[._-]v?(\d+(?:\.\d+)+)[^/]*\(Build(\d+)\)\.dmg}i)
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

  uninstall quit:  "com.quark.clouddrive.desktop",
            trash: "/Applications/QuarkCloudDrive.app"

  zap trash: [
    "~/Library/Application Support/QuarkCloudDrive",
    "~/Library/Caches/com.quark.clouddrive.desktop",
    "~/Library/Caches/com.quark.clouddrive.macinstaller",
    "~/Library/Logs/QuarkCloudDrive",
    "~/Library/Preferences/com.quark.clouddrive.desktop.plist",
    "~/Library/Saved Application State/com.quark.clouddrive.desktop.savedState",
  ]
end
