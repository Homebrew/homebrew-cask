cask "quarkclouddrive" do
  arch arm: "arm64", intel: "x64"
  channel = on_arch_conditional arm:   "pckk@app_downloader_fail_arm64",
                                intel: "pckk@app_downloader_fail_x64"

  on_arm do
    version "7.0.6.771,3120899"
    sha256 "f233d552b65a884243378f16096ae4b04489399d58178483e4c9ab9780e3ef7d"
  end
  on_intel do
    version "7.0.6.771,3120907"
    sha256 "aa21c3ca95f3e3abfa21ac1d1b0e3bc63c801238db6b0e66a3ce9c74757fb9f9"
  end

  url "https://umcdn.quark.cn/download/37213/quarkclouddrivemac/#{channel}/QuarkCloudDriveMac_V#{version.csv.first}_mac_pf30003_(zh-cn)_abi#{arch}_(Build#{version.csv.second}).dmg"
  name "Quark Cloud Drive"
  name "夸克网盘"
  desc "Cloud storage and file management platform"
  homepage "https://pan.quark.cn/"

  livecheck do
    url "https://download.quark.cn/download/quarkclouddrivemac?platform=mac&ch=#{channel}"
    regex(%r{
      /download/37213/quarkclouddrivemac/
      #{Regexp.escape(channel)}/
      QuarkCloudDriveMac[._-]v?(\d+(?:\.\d+)+)
      [^/]*\(Build(\d+)\)\.dmg
    }xi)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :catalina

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
