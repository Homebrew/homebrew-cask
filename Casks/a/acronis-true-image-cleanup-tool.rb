cask "acronis-true-image-cleanup-tool" do
  version "41561"
  sha256 "aae4d79ea1324941d67857f1ab81efdc8b680dd4dd14380f78bf7c5b9320a5bd"

  url "https://dl.acronis.com/u/support/KB/cleanup_tool%20Mac?version=#{version}"
  name "Acronis True Image Cleanup Utility"
  desc "Uninstaller for Acronis True Image"
  homepage "https://care.acronis.com/s/article/48668-Acronis-Cyber-Protect-Home-Office-Acronis-True-Image-Cleanup-Utility"

  livecheck do
    url :url
    regex(/\x00cleanup_tool_mac_macarm64_(.+?)\x00/)
  end

  depends_on macos: ">= :big_sur"

  google_cloud_sdk_root = "#{HOMEBREW_PREFIX}/lib/acronis-true-image"

  binary "#{staged_path}/cleanup_tool%20Mac", target: "#{google_cloud_sdk_root}/cleanup_tool"

  # No zap stanza required
end
