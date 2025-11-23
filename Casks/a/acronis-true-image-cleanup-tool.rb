cask "acronis-true-image-cleanup-tool" do
  version "41561"
  sha256 :no_check

  url "https://dl.acronis.com/u/support/KB/cleanup_tool%20Mac"
  name "Acronis True Image Cleanup Utility"
  desc "Uninstaller for Acronis True Image"
  homepage "https://care.acronis.com/s/article/48668-Acronis-Cyber-Protect-Home-Office-Acronis-True-Image-Cleanup-Utility"

  livecheck do
    url :url
    regex(/\x00cleanup_tool_mac_macarm64[._-]v?(\d+(?:\.\d+)*)\x00/i)
  end

  depends_on macos: ">= :big_sur"

  lib_directory = "#{HOMEBREW_PREFIX}/lib/acronis-true-image"

  binary "#{staged_path}/cleanup_tool%20Mac", target: "#{lib_directory}/cleanup_tool"

  # No zap stanza required
end
