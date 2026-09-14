cask "quarkclouddrive" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.2.0.792,3172746"
    sha256 "529f2836c2dfbf95add095667e5a56187237aa3142f8c238fa12bd97471237c5"
  end
  on_intel do
    version "7.2.0.792,3172748"
    sha256 "3c532235a51034bc4bf9e8ea78370010169285bfec6c1cd1d133d990ae19e753"
  end

  url "https://umcdn.quark.cn/download/37213/quarkclouddrivemac/pckk@product_guanwang/QuarkCloudDriveMac_V#{version.csv.first}_mac_pf30003_(zh-cn)_abi#{arch}_(Build#{version.csv.second}).dmg"
  name "Quark Cloud Drive"
  name "夸克网盘"
  desc "Cloud storage and file management platform"
  homepage "https://pan.quark.cn/"

  livecheck do
    url "https://pan.quark.cn/api/client_version?pr=ucpro&fr=pc",
        referer: "https://pan.quark.cn/"
    regex(%r{
      /download/37213/quarkclouddrivemac/
      pckk@product_guanwang/
      QuarkCloudDriveMac[._-]v?(\d+(?:\.\d+)+)
      [^/]*abi#{arch}[^(]*\(Build(\d+)\)\.dmg
    }xi)
    strategy :json do |json, regex|
      data = json["data"]
      next [] if data.blank?

      [data["macDmgUrl"], data["macDmgForArmUrl"]].filter_map do |url|
        match = url&.match(regex)
        "#{match[1]},#{match[2]}" if match
      end
    end
  end

  depends_on :macos

  app "QuarkCloudDrive.app"

  zap trash: [
    "~/Library/Application Support/QuarkCloudDrive",
    "~/Library/Caches/com.quark.clouddrive.desktop",
    "~/Library/Caches/com.quark.clouddrive.macinstaller",
    "~/Library/Logs/QuarkCloudDrive",
    "~/Library/Preferences/com.quark.clouddrive.desktop.plist",
    "~/Library/Saved Application State/com.quark.clouddrive.desktop.savedState",
  ]
end
