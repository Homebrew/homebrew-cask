cask "cloud189" do
  version "1.1.0"
  sha256 "d109d1f996654321b86ff014f5ab8cc86ec9a144518605e9889db0ed6922c935"

  url "https://cloud189-shandong-person.oos-sdqd.ctyunapi.cn/354011ff-2893-44b4-ae1b-265a3ec466bd.dmg?response-content-disposition=attachment%3Bfilename%3D%22cloud189_mac_v#{version}_setup.dmg%22%3Bfilename*%3DUTF-8%27%27cloud189_mac_v#{version}_setup.dmg&x-amz-CLIENTNETWORK=UNKNOWN&x-amz-CLOUDTYPEIN=PERSON&x-amz-limit=rate%3D51200%2Cconcurrency%3D12&x-amz-CLIENTTYPEIN=UNKNOWN&Signature=Er9zf7bBYv4P8GxA8usESvlM/l8%3D&AWSAccessKeyId=caf5e6901807aca55a45&x-amz-userLevel=0&Expires=1650164625&x-amz-FSIZE=78343550&x-amz-UID=297953828&x-amz-UFID=61304212366059386",
      verified "cloud189-shandong-person.oos-sdqd.ctyunapi.cn/"
  name "cloud189"
  name "天翼云盘"
  desc "Network cloud storage service platform"
  homepage "https://cloud.189.cn/web/login.html"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "天翼云盘.app"

  uninstall quit: "21cn.cloud.dist"

  zap trash: [
    "~/Library/Preferences/21cn.cloud.dist.plist",
    "~/Library/Saved Application State/21cn.cloud.dist.savedState",
  ]
end
