cask "qctools" do
  version "1.4"
  sha256 "0023f0475cc22fbd87e5649db586db9b8c6f34d57563c2087b43b2d32b920fca"

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

  caveats do
    requires_rosetta
  end
end
