cask "qctools" do
  version "1.3.1"
  sha256 "8151679f9e648e00008f60810dcb29632308fb78a2053ca178686e47dd9a3eea"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  name "QCTools"
  desc "Audiovisual analytics and filtering for video files"
  homepage "https://mediaarea.net/QCTools"

  livecheck do
    url "https://mediaarea.net/QCTools/Download/Mac_OS"
    regex(/href=.*?QCTools[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  app "QCTools.app"
end
