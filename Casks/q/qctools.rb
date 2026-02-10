cask "qctools" do
  version "1.4.1"
  sha256 "bafce2600d2dfc6efefecfa156b550b6383f26a9739cba4f83a62255bcf51975"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  name "QCTools"
  desc "Audiovisual analytics and filtering for video files"
  homepage "https://mediaarea.net/QCTools"

  livecheck do
    url "https://mediaarea.net/QCTools/Download/Mac_OS"
    regex(/href=.*?QCTools[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "QCTools.app"

  zap trash: [
    "~/Library/Preferences/net.mediaarea.qctools.mac.plist",
    "~/Library/Preferences/net.mediaarea.QCTools.plist",
    "~/Library/Saved Application State/net.mediaarea.qctools.mac.savedState",
  ]
end
