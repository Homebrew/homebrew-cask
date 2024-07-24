cask "luminance-hdr" do
  version "2.6.0"
  sha256 "14b201123036f826a3d4f2f2d5c00a7ef60938adf8f8cf35ca58f38ee8ef6642"

  url "https://downloads.sourceforge.net/qtpfsgui/luminance/LuminanceHDR_#{version}-Qt5.13.dmg",
      verified: "downloads.sourceforge.net/qtpfsgui/"
  name "Luminance HDR"
  desc "Provides a workflow for HDR imaging"
  homepage "https://qtpfsgui.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/qtpfsgui/rss?path=/luminance"
    regex(%r{url=.*?/Luminance[_-]?HDR[._-]v?(\d+(?:\.\d+)+)[^"' ]*?\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Luminance HDR #{version.major_minor_patch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl*",
    "~/Library/Preferences/com.luminance-hdr.plist",
  ]

  caveats do
    requires_rosetta
  end
end
