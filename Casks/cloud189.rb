cask "cloud189" do
  version "1.1.0"
  sha256 "d109d1f996654321b86ff014f5ab8cc86ec9a144518605e9889db0ed6922c935"

  url "https://download.cloud.189.cn/file/downloadFile.action?dlt=4&dt=1&expired=1766930486508&sk=297953828&ufi=61304212366059386&zyc=60&token=cloud3&sig=gfhWf6DndIlD28kChBJM1d48E18%3D"
  name "Cloud189"
  name "天翼云盘"
  desc "Public cloud storage service"
  homepage "https://cloud.189.cn"

  livecheck do
    skip "No version information available"
  end

  app "天翼云盘.app"

  uninstall quit: "com.cnki.cnkiexpress"

  zap trash: [
    "~/Library/Application Support/com.21cn.cloud-dist",
    "~/Library/Preferences/21cn.cloud.dist.plist",
  ]
end
