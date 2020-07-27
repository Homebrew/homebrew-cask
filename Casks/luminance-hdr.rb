cask "luminance-hdr" do
  version "2.6.0"
  sha256 "14b201123036f826a3d4f2f2d5c00a7ef60938adf8f8cf35ca58f38ee8ef6642"

  # downloads.sourceforge.net/qtpfsgui/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qtpfsgui/luminance/LuminanceHDR_#{version}-Qt5.13.dmg"
  appcast "https://sourceforge.net/projects/qtpfsgui/rss"
  name "Luminance HDR"
  homepage "https://qtpfsgui.sourceforge.io/"

  app "Luminance HDR #{version.major_minor_patch}.app"

  zap trash: [
    "~/Library/Preferences/com.luminance-hdr.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl*",
  ]
end
